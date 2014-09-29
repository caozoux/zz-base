#pragma once
enum KMMSG_TYPE{
	KMMSG_TYPE_KEY = 1,
	KMMSG_TYPE_MS =  2,
};
struct km_msg {
	KMMSG_TYPE type;
	union msg_key {
		WPARAM wParam;
		LPARAM lParam;
	};
	union msg_ms{
		WPARAM wParam;
		LPARAM lParam;
	};
};

class CKeyConbination{
public:
	CKeyConbination();
	~CKeyConbination();
};

enum KEYMAN_STATE {
	//正常状态
	KEYMAN_NORMAL,
	//进入了状态KEY
	KEYMAN_STATE,
};

class CKeyConbMan {
public:
	CKeyConbMan();
	~CKeyConbMan();
	enum KEYMAN_STATE mState;
private:
	//第一查找是否是设置状态Key了
	bool MatchStateKey();
	//第一查找是组合Key
	bool MatchStateKeyCon();

public:
	bool RegisterKey( mState = KEYMAN_NORMAL);
	bool UnRegisterKey();
	bool HandleKM(int code,       // hook code   
              WPARAM wParam, // virtual-key code   
              LPARAM lParam   // keystroke-message information 
			  );
};

class CKMApp
{
public:
	CKMApp(void);
	~CKMApp(void);
//private:
	
public:
	bool HandleKM(int code,       // hook code   
              WPARAM wParam, // virtual-key code   
              LPARAM lParam   // keystroke-message information 
			  );

	bool SetState();
	static bool Intialization();
};


