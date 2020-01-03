package cn.stylefeng.guns.modular.base.state;

public class Constant {

	//redis保存用户token有效时间
	public static final long SAVEUSERTIME = 24*60*60;
	//系统平台
	public static final Long SYS_PLATFORM = -1L;



	public static final String SMS="SMS:";

	public static final String TOKEN="TOKEN:";
	public static final String SINGLE_ACCOUNT="SINGLE_ACCOUNT:";

	//商户角色id
	public static final String MERCHANT_ROLE_ID="10";


	/**
	 * ============================== 排序参数 ==========================================
	 *
	 * 									start
	 *
	 *
	 *========================================================================
	 */
	//创建时间
	public static final String CREATE_TIME="CREATE_TIME";
	public static final String SORT="sort";
/**
 * ============================== 排序参数 ==========================================
 *
 * 			-										end
 *
 * ========================================================================
 */

	/**
	 *========================================================================
	 *
	 *
	 * 					  			系统参数 -----start
	 *
	 *========================================================================
	 */

	//累计签到奖励内容
	public static final String CHECK_IN_AWARD="CHECK_IN_AWARD";

	//本站URL
	public static final String URL="URL";
	//H5  URL
	public static final String H5_URL="H5_URL";

	//短信账号
	public static final String SMS_ACCOUNT="SMS_ACCOUNT";
	//短信密码
	public static final String SMS_PASSWORD="SMS_PASSWORD";
	//短信模板
	public static final String SMS_CONTENT="SMS_CONTENT";

	//token 失效时间 s
	public static final String TOKEN_EXPIRE = "TOKEN_EXPIRE";
	//短信开关
	public static final String SMS_OPEN = "SMS_OPEN";

	public static final long SMS_TIMEOUT = 60*5;

	//BTC最小提币量
	public static final String MIN_BTC_NUM = "MIN_BTC_NUM";
	//BTC提币手续费
	public static final String BTC_FEE = "BTC_FEE";
	//算力有效时间
	public static final String POWER_DAY = "POWER_DAY";





	/**
	 *========================================================================
	 *
	 *
	 * 					  			系统参数 -----end
	 *
	 *========================================================================
	 */




	/**
	 *========================================================================
	 *
	 *
	 * 					  			行情常量 -----start
	 *
	 *========================================================================
	 */
	//btc/usdt
	public static final String TICKET_BTC_USDT = "TICKET_BTC_USDT";
	//eth/usdt
	public static final String TICKET_ETH_USDT = "TICKET_ETH_USDT";
	//xrp/usdt
	public static final String TICKET_XRP_USDT = "TICKET_XRP_USDT";
	//火币行情
	public static final String TICKET_HUOBI = "TICKET_HUOBI";
	//BTC 实时行情
	public static final String BTC_KLINE = "BTC_KLINE";




	/**
	 *========================================================================
	 *
	 *
	 * 					  			行情常量 -----end
	 *
	 *========================================================================
	 */





}
