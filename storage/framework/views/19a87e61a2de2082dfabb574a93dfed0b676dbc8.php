<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            
            <li class="treeview active">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>系统管理</span>
                    <span class="pull-right-container"></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo e(url('admin/permissions')); ?>"><i class="fa fa-circle-o"></i> 权限管理</a></li>
                    <li><a href="<?php echo e(url('admin/users')); ?>"><i class="fa fa-circle-o"></i> 用户管理</a></li>
                    <li><a href="<?php echo e(url('admin/roles')); ?>"><i class="fa fa-circle-o"></i> 角色管理</a></li>
                </ul>
            </li>
            
            
            <li class="active treeview">
                <a href="<?php echo e(url('admin/posts')); ?>">
                    <i class="fa fa-dashboard"></i> <span>文章管理</span>
                </a>
            </li>
            
            
            <li class="active treeview">
                <a href="<?php echo e(url('admin/topics')); ?>">
                    <i class="fa fa-dashboard"></i> <span>专题管理</span>
                </a>
            </li>
            
            
            <li class="active treeview">
                <a href="<?php echo e(url('admin/notices')); ?>">
                    <i class="fa fa-dashboard"></i> <span>通知管理</span>
                </a>
            </li>
            
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
