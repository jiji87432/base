package cn.stylefeng.guns.modular.app.mapper;
import cn.stylefeng.guns.core.common.node.ZTreeNode;
import cn.stylefeng.guns.modular.app.dto.ApiTeamMemberDto;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
import cn.stylefeng.guns.modular.app.entity.Member;
/**
 * 用户信息Mapper 接口
 *
 * @author yaying.liu
 * @Date 2019-12-06 09:50:49
 */
public interface MemberMapper extends BaseMapper<Member> {

    Page<Map<String,Object>> selectByCondition(@Param("page") Page page, @Param("condition") String condition,@Param("refereeId")Long refereeId);

    List<ApiTeamMemberDto> getDirectMembersByMemberId(Member member);

    List<Member> getDirectMembersList(@Param("memberId")Long memberId);

    Member getConvertMemebr(@Param("address")String address);

    List<Member> getNotSystemUpdateMember();

    /**
     * 获取ztree的节点列表
     */
    List<ZTreeNode> tree();

    int updateTypeByMember(@Param("memberId")Long memberId, @Param("version")Long version, @Param("type")String type);

}