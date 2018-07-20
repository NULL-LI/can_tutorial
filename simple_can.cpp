#include <stdio.h>
#include <unistd.h>

extern "C" {
#include <controlcan.h>
}
using namespace std;

int CANIDX = 0; // port of can card

int main(int argc, char **argv) {

  // example of changing data to BYTE and back

  BYTE *num;
  float a = 23.333;
  num = (BYTE *)&a;
  printf("float: %f \n", a);
  printf("byte: %d %d %d %d \n", *num, *(num + 1), *(num + 2), *(num + 3));

  BYTE newNum[4] = {*num, *(num + 1), *(num + 2), *(num + 3)};
  float *back = (float *)newNum;
  printf("back to float: %f \n", back);

  // initialize hardware
  if (VCI_OpenDevice((DWORD)VCI_USBCAN2, (DWORD)0, (DWORD)0) != 1) {
    printf("open deivce error\n");
    return 1;
  }

  printf("CAN device open success");

  VCI_INIT_CONFIG config;
  config.AccCode = 0;
  config.AccMask = 0xffffffff;
  config.Filter = 1;
  config.Mode = 0;

  /*baud rate 500K  0x00  0x1C*/
  config.Timing0 = 0x00;
  config.Timing1 = 0x1C;

  if (VCI_InitCAN(VCI_USBCAN2, 0, CANIDX, &config) != 1) {
    printf("init CAN error\n");
    VCI_CloseDevice(VCI_USBCAN2, 0);
    return 1;
  }

  printf("CAN init success");

  if (VCI_StartCAN(VCI_USBCAN2, 0, CANIDX) != 1) {
    printf("Start CAN error\n");
    VCI_CloseDevice(VCI_USBCAN2, 0);
    return 1;
  }
  printf("CAN start success");

  
  int reclen = 0;
  VCI_CAN_OBJ rec[100];
  int i;
  int framenum;
  while (1) {
// example of receiving
    reclen = VCI_Receive(VCI_USBCAN2, 0, CANIDX, rec, 2500, 0);
    if (reclen > 0) {
      printf("%d frames received    ", reclen);
//print the received data
      for (framenum = 0; framenum < reclen; framenum++) {
        for (i = 0; i < rec[framenum].DataLen; i++) {
          printf("%d ", (int)rec[framenum].Data[i]);
        }
        printf("\n ");
      }
    }
    sleep(1);

    // example of sending
    // prepare data
    int length = 1;
    VCI_CAN_OBJ send[length];
    for (int i = 0; i < length; i++) {
      send[i].ID = 1;
      send[i].SendType = 0;
      send[i].RemoteFlag = 0;
      send[i].ExternFlag = 0;
      send[i].DataLen = 8;
      send[i].Data[0] = (BYTE)22;//replace these numbers with your own data
      send[i].Data[1] = (BYTE)33;
      send[i].Data[2] = (BYTE)41;
      send[i].Data[3] = (BYTE)35;
      send[i].Data[4] = (BYTE)62;
      send[i].Data[5] = (BYTE)71;
      send[i].Data[6] = (BYTE)28;
      send[i].Data[7] = (BYTE)96;
    }
//send message to CAN
    int success_frame_number;
    success_frame_number = VCI_Transmit(VCI_USBCAN2, 0, CANIDX, send, length);
    if (success_frame_number == length) {
      printf("send success\n");
    } else {
      printf("error: send error \n");
    }
    sleep(1);
  }
  VCI_CloseDevice(VCI_USBCAN2, 0);
  return 0;
}
