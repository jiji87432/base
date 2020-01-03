package cn.stylefeng.guns.modular.app.wrapper;
import cn.hutool.core.util.StrUtil;
import cn.stylefeng.guns.modular.app.entity.Member;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.state.PromotionFactory;
import cn.stylefeng.guns.modular.com.entity.Region;
import cn.stylefeng.roses.core.base.warpper.BaseControllerWrapper;
import cn.stylefeng.roses.kernel.model.page.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import java.util.List;
import java.util.Map;
/**
 * 用户信息Wrapper
 *
 * @author yaying.liu
 * @Date 2019-12-06 09:50:50
 */
public class MemberWrapper extends BaseControllerWrapper{

    public MemberWrapper(Map<String, Object> single) {
            super(single);
        }

        public MemberWrapper(List<Map<String, Object>> multi) {
            super(multi);
        }

        public MemberWrapper(Page<Map<String, Object>> page) {
            super(page);
        }

        public MemberWrapper(PageResult<Map<String, Object>> pageResult) {
            super(pageResult);
        }

        @Override
        protected void wrapTheMap(Map<String, Object> map) {
            String type = (String) map.get("type");
            if (type != null) {
                for (ProConst.MemberType e : ProConst.MemberType.values()) {
                    if(e.code().equals(type))
                    {
                        map.put("typeValue",e.value());
                    }
                }
            }

            Long refereeId=(Long)map.get("refereeId");
            if(refereeId!=null)
            {
                Member member = PromotionFactory.me().getMember(refereeId);
                map.put("refereeIdValue",member==null?"无":member.getPhone());
            }

            StringBuffer belongToWhere=new StringBuffer();
            Long provinceId=(Long)map.get("provinceId");
            if(provinceId!=null)
            {
               Region region= PromotionFactory.me().getRegion(provinceId);
               map.put("provinceIdValue",region==null?"无":region.getName());
                belongToWhere.append(region.getName());
            }

            Long cityId=(Long)map.get("cityId");
            if(cityId!=null)
            {
               Region region= PromotionFactory.me().getRegion(cityId);
               map.put("cityIdValue",region==null?"无":region.getName());
                belongToWhere.append(region.getName());
            }
            Long areaId=(Long)map.get("areaId");
            if(areaId!=null)
            {
               Region region= PromotionFactory.me().getRegion(areaId);
               map.put("areaIdValue",region==null?"无":region.getName());
                belongToWhere.append(region.getName());
            }

            map.put("BelongToWhere",belongToWhere);


            String points=(String)map.get("points");
            if(points!=null)
            {
                map.put("pointsValue",StrUtil.equals(points,"1")?"是":"否");
            }
            String provinceProxy=(String)map.get("provinceProxy");
            if(provinceProxy!=null)
            {
                map.put("provinceProxyValue",StrUtil.equals(provinceProxy,"1")?"是":"否");
            }
            String cityProxy=(String)map.get("cityProxy");
            if(cityProxy!=null)
            {
                map.put("cityProxyValue",StrUtil.equals(cityProxy,"1")?"是":"否");
            }
            String areaIdProxy=(String)map.get("areaIdProxy");
            if(areaIdProxy!=null)
            {
                map.put("areaIdProxyValue",StrUtil.equals(areaIdProxy,"1")?"是":"否");
            }

            String director=(String)map.get("director");

            if(director!=null)
            {
                map.put("directorValue",StrUtil.equals(director,"1")?"是":"否");
            }
            String cooperation=(String)map.get("cooperation");
            if(cooperation!=null)
            {
                map.put("cooperationValue",StrUtil.equals(cooperation,"1")?"是":"否");
            }

            Long provinceProxyId=(Long)map.get("provinceProxyId");
            if(provinceProxyId!=null)
            {
                Region region= PromotionFactory.me().getRegion(provinceProxyId);
                map.put("provinceProxyIdValue",region==null?"无":region.getName());
            }


            Long cityProxyId=(Long)map.get("cityProxyId");
            if(cityProxyId!=null)
            {
                Region region= PromotionFactory.me().getRegion(cityProxyId);
                map.put("cityProxyIdValue",region==null?"无":region.getName());
            }

            Long areaIdProxyId=(Long)map.get("areaIdProxyId");
            if(areaIdProxyId!=null)
            {
                Region region= PromotionFactory.me().getRegion(areaIdProxyId);
                map.put("areaIdProxyIdValue",region==null?"无":region.getName());
            }

            String status=(String)map.get("status");
            map.put("statusValue",status.equals("Y")?"启用":"禁用");

            Long memberId=(Long)map.get("memberId");
            try
            {
                map.put("powerPrice",PromotionFactory.me().getWallet(memberId,ProConst.WalletType.T).getTotalPrice());
                map.put("btcPrice",PromotionFactory.me().getWallet(memberId,ProConst.WalletType.BTC).getTotalPrice());
                map.put("pointPrice",PromotionFactory.me().getWallet(memberId,ProConst.WalletType.POINT).getTotalPrice());
            } catch (Exception e)
            {
                e.printStackTrace();
            }

            map.put("btcWithdrawalPrice",PromotionFactory.me().getBtcWithdrawalPrice(memberId));
            map.put("btcHeapPrice",PromotionFactory.me().getBtcHeapPrice(memberId));

        }
}