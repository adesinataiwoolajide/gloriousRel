<?php include_once("../administrator/header.php");
    //include_once("details.php");
    $number = $_GET['account_number'];
    $id = $_GET['transaction_id'];
    $transaction = $statement->getTransactionId($id);
    $account_number = $transaction['account'];
    $account = $statement->getSingleAccount($account_number);
    $customerid = $transaction['customerid'];
    
    
?>

    <main class="dt-main">
        <?php include_once("sidebar.php"); ?>

        <div class="dt-content-wrapper">

                <!-- Site Content -->
                <div class="dt-content">

                    <!-- Grid -->
                    <div class="row">
                        <div class="col-12">
                            <div class="row dt-masonry">
                                <div class="col-md-12 dt-masonry__item">
                                    <div class="dt-card">
                                        
                                        <ol class="mb-0 breadcrumb">
                                            <li class="breadcrumb-item"><a href="./">Home</a></li>
                                            <li class="breadcrumb-item"><a href="transaction_details.php?account_number=<?php echo $number ?>&&transaction_id=<?php echo $id ?>">View Transactions Details</a></li>
                                            
                                            <li class="breadcrumb-item"><a href="accounts.php">View Accounts</a></li>
                                            <li class="breadcrumb-item"><a href="transactions.php">View Transactions</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">My Trsansactions on <?php echo $account_number ?> </li>
                                        </ol>
                                        
                                    </div>
                                </div>
                                
                            </div>
                        </div>

                        <!-- Grid Item -->
                        <div class="col-xl-12">

                            <!-- Module -->
                            <div class="dt-module">

                                <!-- Module Sidebar -->
                                <div class="dt-module__sidebar">

                                    <!-- Sidebar Header -->
                                    <div class="dt-module__sidebar-header border-bottom">
                                        <div class="d-none d-md-flex align-items-center">
                                            <i class="icon icon-user-account icon-1x mr-3 text-dark"></i>
                                            <span class="h3 mb-0"><?php echo $transaction['customer_name'] ; ?></span>
                                        </div>

                                    </div>
                                    <!-- /sidebar header -->

                                    <!-- Sidebar Menu -->
                                    <div class="dt-module__sidebar-content ps-custom-scrollbar">

                                        <!-- Sidebar Navigation -->
                                        <ul class="dt-module-side-nav">

                                            <!-- Menu Header -->
                                            <li class="dt-module-side-nav__header">
                                                <span class="dt-module-side-nav__text"></span>
                                            </li>
                                            <!-- /menu header -->

                                            <!-- Menu Item --><?php 
                                            foreach($statement->getSingleCustAccount($customerid) as $show){  ?>
                                                <li class="dt-module-side-nav__item active">
                                                    <a href="transaction_details.php?account_number=<?php echo $show['account'] ?>&&transaction_id=<?php echo $id ?>" class="dt-module-side-nav__link">
                                                        <i class="icon icon-contacts icon-fw icon-lg"></i>
                                                        <span class="dt-module-side-nav__text"><?php echo $show['account'] ?></span> </a>
                                                </li><?php 
                                            } ?>
                                            
                                            <!-- /menu item -->

                                        </ul>
                                        <!-- /sidebar navigation -->

                                    </div>
                                    <!-- /sidebar Menu -->

                                </div>
                                <!-- /module sidebar -->

                                <!-- Module Container -->
                                <div class="dt-module__container">

                                    <!-- Module Header -->
                                    <div class="dt-module__header d-none d-md-flex">

                                        Account Transaction Details

                                    </div>
                                    <!-- /module header -->
                                    <!-- Module Content -->
                                    <div class="dt-module__content ps-custom-scrollbar">
                                        <!-- Module Content Inner -->
                                        <div class="dt-module__content-inner">

                                            <!-- Module List -->
                                            <div class="dt-module__list">

                                                <!-- Module Item -->
                                                <div class="dt-module__list-item">

                                                    <!-- Module Content -->
                                                    <div class="dt-module__list-item-content">
                                                        <div class="table-responsive">

                                                            <table  class="table table-striped table-bordered table-hover"><?php
                                                                foreach($statement-> getTransactionList($id) as $accounts){ 
                                                                    $split = explode(",", $accounts['stmt']); 
                                                                    $curr = $split[2]; 
                                                                    $vdate = $split[3]; 
                                                                    $vdat = explode(":", $vdate);
                                                                    $bdate = $split[4]; $bdat = explode(":", $bdate);
                                                                    $amount = $split[5];
                                                                    $description = $split[6]; 
                                                                    $transref = $split[7]; 
                                                                    $rate = $split[8];
                                                                    $inputter = $split[9];
                                                                    $autoriser = $split[10];
                                                                    $transDate = $split[11];
                                                                    $company = $split[12];
                                                                    $fcyamt = $split[13];

                                                                    $starting_date = $bdat[1];
                                                                    $ending_date = $vdat[1]; ?>

                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>CUstomer Name</td  > 
                                                                            <td><?php echo $accounts['customer_name'] ?></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Account Number</td  > 
                                                                            <td><?php echo $number ?></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Booking Date</td  > 
                                                                            <td><?php echo $ending_date ?></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Value Date</td  > 
                                                                            <td><?php echo $starting_date ?></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Amount</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $amo = explode(":", $amount);
                                                                                echo $amo[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Currency</td  > 
                                                                            <td><?php $currency = explode(":", $curr); echo $currency[1] ?></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Status</td  > 
                                                                            <td>
                                                                            <?php 
                                                                                $status = substr($amo[1], 0,1);
                                                                                if($status!= "-" ){ ?>
                                                                                        <p style="color: green"> CR</p><?php
                                                                                } else{ ?>
                                                                                    <p style="color: red"> DR</p><?php
                                                                                }?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Desc</td  > 
                                                                            <td>
                                                                                <?php  
                                                                                $des = explode(":,", $description);
                                                                                echo $des[0]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Transaction</td  > 
                                                                            <td>
                                                                            <?php  
                                                                                $tra = explode(":", $transref);
                                                                                $list = $tra[1];
                                                                                echo substr($list, 0,18); ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Rate</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $rat = explode(":", $rate);
                                                                                echo $rat[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Inputter</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $inp = explode(":", $inputter);
                                                                                echo $inp[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Authoriser</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $auth = explode(":", $autoriser);
                                                                                echo $auth[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Transaction Date</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $tranD = explode(":", $transDate);
                                                                                echo $tranD[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Company Name</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $comp = explode(":", $company);
                                                                                echo $comp[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tbody>                                    
                                                                        <tr>
                                                                            <td>Foreign Currency Amt</td  > 
                                                                            <td>
                                                                                <?php 
                                                                                $forei = explode(":", $fcyamt);
                                                                                echo $forei[1]; ?>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody><?php 
                                                                } ?>
                                                            </table>

                                                        </div>
                                                    </div>
                                                    <!-- /module content -->

                                                </div>
                                                <!-- /module item -->

                                            </div>
                                            <!-- /module list -->

                                        </div>
                                        <!-- /module content inner -->

                                    </div>
                                    <!-- /module content -->

                                </div>
                                <!-- /module container -->

                            </div>
                            <!-- /module -->

                        </div>
                        <!-- /grid item -->
                    </div>
                    <!-- /grid -->
                </div>
                <!-- /site content -->  
                <footer class="dt-footer">
                    Copyright Packine Systems © <?php echo date("Y"); ?>
                </footer>

            </div>

        <!-- /customizer sidebar -->
        </main>
    </div>
</div>
<!-- /root -->

<!-- Optional JavaScript -->
<?php include_once("../administrator/footer.php") ?>
