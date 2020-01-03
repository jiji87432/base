package cn.stylefeng.guns.modular.promotion.wrapper;

import cn.stylefeng.guns.modular.app.entity.Member;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.state.PromotionFactory;
import cn.stylefeng.roses.core.base.warpper.BaseControllerWrapper;
import cn.stylefeng.roses.kernel.model.page.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.List;
import java.util.Map;

/**
 * 用户钱包Wrapper
 *
 * @author yaying.liu
 * @Date 2019-10-14 18:05:20
 */
public class WalletWrapper extends BaseControllerWrapper{

    public WalletWrapper(Map<String, Object> single) {
            super(single);
        }

        public WalletWrapper(List<Map<String, Object>> multi) {
            super(multi);
        }

        public WalletWrapper(Page<Map<String, Object>> page) {
            super(page);
        }

        public WalletWrapper(PageResult<Map<String, Object>> pageResult) {
            super(pageResult);
        }

        @Override
        protected void wrapTheMap(Map<String, Object> map) {
            Long memberId=(Long)map.get("memberId");
            if(memberId!=null)
            {
                Member member=PromotionFactory.me().getMember(memberId);
                map.put("memberIdValue",member==null?"无":member.getPhone());
            }

            //typeValue

            String type = (String) map.get("type");
            if (type != null) {
                for (ProConst.WalletType e : ProConst.WalletType.values()) {
                    if(e.getCode().equals(type))
                    {
                        map.put("typeValue",e.getValue());
                    }
                }
            }
        }
}