#include <windows.h>
#include "stdafx.h"
#include "time.h"


LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);
void DrawPixels(HWND hwnd);


int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    PWSTR lpCmdLine, int nCmdShow)
{
  MSG  msg;
  WNDCLASSW wc = {0};

  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpszClassName = L"Pixels";
  wc.hInstance     = hInstance;
  wc.hbrBackground = GetSysColorBrush(BLACK_PEN);
  wc.lpfnWndProc   = WndProc;
  wc.hCursor       = LoadCursor(0, IDC_ARROW);

  RegisterClassW(&wc);
  CreateWindowW(wc.lpszClassName, L"Star Field",
              WS_OVERLAPPEDWINDOW | WS_VISIBLE,
              100, 100, 500, 300, NULL, NULL, hInstance, NULL);

  while( GetMessage(&msg, NULL, 0, 0)) {
    TranslateMessage(&msg);
    DispatchMessage(&msg);
  }

  return (int) msg.wParam;
}

LRESULT CALLBACK WndProc(HWND hwnd, UINT msg,
    WPARAM wParam, LPARAM lParam)
{
  switch(msg)
  {
    case WM_PAINT:
      DrawPixels(hwnd);
      break;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }

  return DefWindowProcW(hwnd, msg, wParam, lParam);
}

void DrawPixels(HWND hwnd)
{

  PAINTSTRUCT ps;
  RECT r;
  srand(time(NULL));


  HDC hdc = BeginPaint(hwnd, &ps);

  GetClientRect(hwnd, &r);

  int i;
  do
  {
	for (i=0; i<1000; i++) 
	{
	  int x = (rand() % r.right - r.left);
      int y = (rand() % r.bottom - r.top);
	  SetPixel(hdc, x, y,rand()%RGB(255, 255, 255));
	};
  } while (TRUE);

  EndPaint(hwnd, &ps);
}
