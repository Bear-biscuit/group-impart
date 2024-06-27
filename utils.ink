===function take_action()===
你消耗了一次行动机会。
~ action_flag = true
~ action_count--

===function add_range(ref var_ref, num, min, max)===
~ temp i = var_ref + num
{ 
 - i < min:
    ~ var_ref = min
 - i > max:
    ~ var_ref = max
 - else:
    ~ var_ref = i
}
~ return num

===function get_target_san()===
~ return get_target_int_var("san")

===function get_target_libido()===
~ return get_target_int_var("libido")

===function get_target_strength()===
~ return get_target_int_var("strength")

===function get_target_money()===
~ return get_target_int_var("money")

===function get_target_spray()===
~ return get_target_int_var("spray_count")

===function add_target_spray_count_text(i)===
{ i < 0:
    （目标消耗了防狼喷雾）
}
~ return add_target_int_var("spray",i)

===function add_target_spray_count(i)===
~ return add_target_int_var("spray",i)

===function has_equip_index(equip_index)===
~ return equips ? equips(equip_index)

===function target_has_equip(eq)===
~ return eval_target_function("has_equip_index", INT(LIST_VALUE(eq)))

===function add_equip_index(equip_index)===
~ add_equip(equips(INT(equip_index)))

===function add_equip(eq)===
~ equips += eq
{ eq:
    - blindfold:
    ~ libido_add_ratio = 1.5

    - handcuffs:
    ~ add_strength(-30)
    ~ san_add_ratio = 1.5

    - gag:
    //"禁用自动理智恢复"

    - rope:
    ~ san_reduce_ratio = 0.75
    //OK "被袭击成功率增加 20%"

    - clamps:
    //"自动减少的性欲变为增加"

    - latex:
    ~ libido_add_ratio = 1.5
    //OK "将减少的理智转换为性欲
}

===function add_target_equip(eq)===
~ eval_target_function("add_equip_index", INT(LIST_VALUE(eq)))

===function remove_equip_index(equip_index)===
~ remove_equip(equips(INT(equip_index)))

===function remove_equip(eq)===
~ equips -= eq
{ eq:
    - blindfold:
    ~ libido_add_ratio = 1.0

    - handcuffs:
    ~ add_strength(30)
    ~ san_add_ratio = 1.0

    - gag:
    //"禁用自动理智恢复"

    - rope:
    ~ san_reduce_ratio = 1.0
    // OK "被袭击成功率增加 20%"

    - clamps:
    //"自动减少的性欲变为增加"

    - latex:
    ~ libido_add_ratio = 1.0
    //"将减少的理智转换为性欲
}

===function remove_target_equip(eq)===
~ eval_target_function("remove_equip_index", INT(LIST_VALUE(eq)))


=== function add_num_text(i) ===
{ i < 0:
    ~ temp fi = -i
    ~ return "- " + fi
- else:
    ~ return "+ " + i
}

=== function add_san(i) ===
{
    - i > 0:
        ~ i = i * san_add_ratio
    -else:
        ~ i = i * san_reduce_ratio
        { painkiller_count > 0:
            ~ painkiller_count--
            ~ i = i * 0.2
        }
        { equips ? latex:
            ~ add_libido(i)
            ~ i = 0
        }
}
~ return add_range(san, INT(i), 0, max_san)

=== function add_san_text(i) ===
~ temp ap = ""
{ i < 0:
    { painkiller_count > 0:
        ~ ap += "（消耗了止痛药）"
    }
    { equips ? latex:
        ~ ap += "（被乳胶衣转化）"
    }
}
~ return "（理智 " + add_num_text(add_san(i)) + "）" + ap

=== function add_strength(i) ===
{
    - i > 0:
        ~ i = i * strength_add_ratio
    -else:
        ~ i = i * strength_reduce_ratio
}
~ return add_range(strength, INT(i), 0, max_strength)
	
=== function add_strength_text(i) ===
~ return "（战斗力 " + add_num_text(add_strength(i)) + "）"
	
===  function add_libido(i) ===
{
    - i > 0:
        ~ i = i * libido_add_ratio
    -else:
        ~ i = i * libido_reduce_ratio
}
~ return add_range(libido, INT(i), 0, max_libido)

=== function add_libido_text(i) ===
~ return "（性欲 " + add_num_text(add_libido(i)) + "）"

=== function add_money(i) ===
{
    - i > 0:
        ~ i = i * money_add_ratio
    -else:
        ~ i = i * money_reduce_ratio
}
~ i = INT(i)
~ money += i
~ return i
	
=== function add_money_text(i) ===
~ return "（金币 " + add_num_text(add_money(i)) + "）"
	
=== function add_init_item_count(i) ===
~ init_item_count += i
~ return "（初始道具 " + add_num_text(i) + "）"
	
=== function add_target_san(i) ===
~ return eval_target_function_safe("add_san", 1, i)

=== function add_target_strength(i) ===
~ return eval_target_function_safe("add_strength", 1, i)
    
=== function add_target_libido(i) ===
~ return eval_target_function_safe("add_libido", 1, i)

=== function add_target_money(i) ===
~ return eval_target_function_safe("add_money", 1, i)

=== function add_target_san_text(i) ===
~ add_target_san(i)
~ return "（目标理智 " + add_num_text(i) + "）"

=== function add_target_strength_text(i) ===
~ add_target_strength(i)
~ return "（目标战斗力 " + add_num_text(i) + "）"

=== function add_target_libido_text(i) ===
~ add_target_libido(i)
~ return "（目标性欲 " + add_num_text(i) + "）"

=== function add_target_money_text(i) ===
~ add_target_money(i)
~ return "（目标金币 " + add_num_text(i) + "）"
