#include "StdAfx.h"
#include "KMApp.h"
#include "custom_debug.h"

CKMApp * g_app = NULL;
CKMApp::CKMApp(void)
{
}


CKMApp::~CKMApp(void)
{
}

bool CKMApp::HandleKM(int code,       // hook code   
              WPARAM wParam, // virtual-key code   
              LPARAM lParam   // keystroke-message information 
			  )
{

	return false;
}

bool SetState()
{

	return false;
}
bool CKMApp::Intialization()
{
	if(!g_app) {
		g_app = new CKMApp();
		return true;
	} else {
		odprintf(L"error: %s has intializaed\n", __FUNCTION__);
	}
	return false;
}


//==============================================================
bool CKeyConbMan::RegisterKey()
{
	return false;
}

bool CKeyConbMan::UnRegisterKey()
{
	return false;
}


bool CKeyConbMan::HandleKM(int code,       // hook code   
            WPARAM wParam, // virtual-key code   
            LPARAM lParam   // keystroke-message information 
			)
{
	if (mState == KEYMAN_STATE) {
		return MatchStateKey();
	} else if (mState == KEYMAN_NORMAL) {
		return MatchStateKeyCon();
	} else {
		return false; 
	}
	
	return false;
}