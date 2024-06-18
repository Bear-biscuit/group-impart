VAR slave_capacity = 1

VAR slave_0 = ""
VAR slave_1 = ""
VAR slave_2 = ""
VAR slave_3 = ""
VAR slave_4 = ""

===function has_slave()===
~ return get_slave_count() > 0

===function has_slave_id(id)===
~ return slave_0 == id || slave_1 == id || slave_2 == id || slave_3 == id || slave_4 == id

===function target_is_slave()===
~ return has_slave_id(target_id)

===function free_self()===
~ is_slave = false

===function get_slave_count()===
~ temp i = 0
{ slave_0 != "":
    ~ i++
}
{ slave_1 != "":
    ~ i++
}
{ slave_2 != "":
    ~ i++
}
{ slave_3 != "":
    ~ i++
}
{ slave_4 != "":
    ~ i++
}
~ return i

===function can_set_target_to_slave()===
~ return get_slave_count() < slave_capacity

===function set_target_to_slave()===
{
    - slave_0 == "":
        ~ slave_0 = target_id
    - slave_1 == "":
        ~ slave_1 = target_id
    - slave_2 == "":
        ~ slave_2 = target_id
    - slave_3 == "":
        ~ slave_3 = target_id
    - slave_4 == "":
        ~ slave_4 = target_id
}
~ set_target_bool_var("is_slave", true)
~ eval_target_function("free_all_targets_from_slave", 0)
~ return set_target_string_var("owner", self)

===function free_target_from_slave()===
~ temp id = target_id
{
    - id == slave_0:
        ~ slave_0 = ""
    - id == slave_1:
        ~ slave_1 = ""
    - id == slave_2:
        ~ slave_2 = ""
    - id == slave_3:
        ~ slave_3 = ""
    - id == slave_4:
        ~ slave_4 = ""
}
~ eval_target_function("free_self", 0)

===function free_all_targets_from_slave()===
{ slave_0 != "":
    ~ set_target(slave_0)
    ~ free_target_from_slave()
}
{ slave_1 != "":
    ~ set_target(slave_1)
    ~ free_target_from_slave()
}
{ slave_2 != "":
    ~ set_target(slave_2)
    ~ free_target_from_slave()
}
{ slave_3 != "":
    ~ set_target(slave_3)
    ~ free_target_from_slave()
}
{ slave_4 != "":
    ~ set_target(slave_4)
    ~ free_target_from_slave()
}
