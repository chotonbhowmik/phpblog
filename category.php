<?php
     include "inc/header.php";
?>
    
    <!-- :::::::::: Page Banner Section Start :::::::: -->
    <section class="blog-bg background-img">
        <div class="container">
            <!-- Row Start -->
            <div class="row">
                <div class="col-md-12">
                    <h2 class="page-title">Blog Page</h2>
                    <!-- Page Heading Breadcrumb Start -->
                    <nav class="page-breadcrumb-item">
                        <ol>
                            <li><a href="index.html">Home <i class="fa fa-angle-double-right"></i></a></li>
                            <!-- Active Breadcrumb -->
                            <li class="active">Blog</li>
                        </ol>
                    </nav>
                    <!-- Page Heading Breadcrumb End -->
                </div>
                  
            </div>
            <!-- Row End -->
        </div>
    </section>
    <!-- ::::::::::: Page Banner Section End ::::::::: -->



    <!-- :::::::::: Blog With Right Sidebar Start :::::::: -->
    <section>
        <div class="container">
            <div class="row">
                <!-- Blog Posts Start -->
                <div class="col-md-8">

                    <?php

                     if (isset($_GET['category'])) {
                         $navCatName = $_GET['category'];

                         $query = "SELECT * FROM category WHERE cat_name = '$navCatName'";
                         $catNameToId = mysqli_query($db, $query);
                         while ($row = mysqli_fetch_assoc($catNameToId)) {

                             $cat_id = $row['cat_id'];
                             $cat_name = $row['cat_name'];

                         }
                         $sql = "SELECT * FROM post WHERE category_id = '$cat_id' ORDER BY post_id DESC";
                       $catPost = mysqli_query($db, $sql);
                       $totalCat = mysqli_num_rows($catPost);
                       if ($totalCat != 0) {
                         while ($row = mysqli_fetch_assoc($catPost)) {

                        $post_id          =  $row['post_id'];
                        $title            =  $row['title'];
                        $description      =  $row['description'];
                        $image            =  $row['image'];
                        $category_id      =  $row['category_id'];
                        $author_id        =  $row['author_id'];
                        $status           =  $row['status'];
                        $meta             =  $row['meta'];
                        $post_date        =  $row['post_date'];
                          ?>

                          <!-- Single Item Blog Post Start -->
                    <div class="blog-post">
                        <!-- Blog Banner Image -->
                        <div class="blog-banner">
                            <a href="single.php?post=<?php echo $post_id; ?>">
                                <img src="admin/img/post/<?php echo $image; ?>">
                                <!-- Post Category Names -->
                                <div class="blog-category-name">

                                    <?php
                                    $sql = "SELECT * FROM category WHERE cat_id = '$category_id'";
                                    $readCat = mysqli_query($db, $sql);
                                    while ($row = mysqli_fetch_assoc($readCat)) {

                                        $cat_id    = $row['cat_id'];
                                        $cat_name  = $row['cat_name'];
                                        ?>
                                        <h6><?php echo $cat_name; ?></h6>
                                        
                                 <?php   }



                                    ?>
                                    
                                </div>
                            </a>
                        </div>
                        <!-- Blog Title and Description -->
                        <div class="blog-description">
                            <a href="single.php?post=<?php echo $post_id; ?>">
                                <h3 class="post-title"><?php echo $title; ?></h3>
                            </a>
                            <p><?php echo substr($description, 0, 500)." ....." ; ?></p>
                            <!-- Blog Info, Date and Author -->
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="blog-info">
                                        <ul>
                                            <li><i class="fa fa-calendar"></i><?php echo $post_date; ?></li>
                                            <li>
                                                <?php
                                                $sql = "SELECT * FROM users WHERE id = '$author_id'";
                                                $readUser = mysqli_query($db, $sql);
                                                while ($row = mysqli_fetch_assoc($readUser)) {

                                                    $id   = $row['id'];
                                                    $name = $row['name'];

                                                }

                                                ?>
                                                <i class="fa fa-user"></i> Posted by - <?php echo $name; ?></li>
                                            <!-- <li><i class="fa fa-heart"></i>(50)</li> -->
                                        </ul>
                                    </div>
                                </div>

                                <div class="col-md-4 read-more-btn">
                                    <a href="single.php?post=<?php echo $post_id; ?>" class="btn-main">Read More <i class="fa fa-angle-double-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single Item Blog Post End -->


                    <?php    }
                           
                       }
                       else{ ?>

                        <div class="alert alert-warning">opss!! No post Publish in this category...</div>

                     <?php  }
                        }

                         ?>


             
                </div>



                <!-- Blog Right Sidebar -->
               <?php
                    include "inc/sidebar.php";

                ?>

                <!-- Right Sidebar End -->
            </div>
        </div>
    </section>
    <!-- ::::::::::: Blog With Right Sidebar End ::::::::: -->
    
<?php
    include "inc/footer.php";

?>
