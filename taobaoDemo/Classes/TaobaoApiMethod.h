//
//  TaobaoApiMethod.h
//  taobaoDemo
//
//  Created by gao xiaofei on 12-1-10.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TaobaoApiMethod : NSObject {
	//登录接口
	static NSString *getLoginUrl=@"com.taobao.wireless.mtop.getLoginUrl";
	static NSString *getUserSessionKey=@"com.taobao.client.mtop.getUserSessionkey";
	static NSString *autologin=@"com.taobao.client.sys.autologin";
	

}

@end
