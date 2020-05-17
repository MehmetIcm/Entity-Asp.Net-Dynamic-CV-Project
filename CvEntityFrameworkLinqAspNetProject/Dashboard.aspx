<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="webDashboard/css/style.css" rel="stylesheet" />
    <link href="webDashboard/css/jqvmap.css" rel="stylesheet" />
    <script src="webDashboard/js/Chart1.js"></script>
    <script src="webDashboard/js/jquery.min.js"></script>
    <script src="webDashboard/js/jquery.vmap.js"></script>
    <script src="webDashboard/js/jquery.vmap.sampledata.js"></script>
    <script src="webDashboard/js/jquery.vmap.world.js"></script>

    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#vmap').vectorMap({
                map: 'world_en',
                backgroundColor: '#333333',
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#666666',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: ['#C8EEFF', '#006491'],
                normalizeFunction: 'polynomial'
            });
        });
    </script>

    <script>
        $(document).ready(function (c) {
            $('.alert-close6').on('click', function (c) {
                $('.world-map').fadeOut('slow', function (c) {
                    $('.world-map').remove();
                });
            });
        });
    </script>
    <div class="list_of_members">
        <div class="sales">
            <div class="icon">
                <i class="dollar"></i>
            </div>
            <div class="icon-text">
                <h3>
                    <asp:Label ID="lblTotalSkill" runat="server" Text="Label"></asp:Label></h3>
                <p>Total Skill</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="new-users">
            <div class="icon">
                <i class="user1"></i>
            </div>
            <div class="icon-text">
                <h3>
                    <asp:Label ID="lblTotalMessage" runat="server" Text="Label"></asp:Label></h3>
                <p>Total Messages</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="orders">
            <div class="icon">
                <i class="order"></i>
            </div>
            <div class="icon-text">
                <h3>
                    <asp:Label ID="lblAverageRatingScore" runat="server" Text="Label"></asp:Label></h3>
                <p>Average Rating Score</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="visitors">
            <div class="icon">
                <i class="visit"></i>
            </div>
            <div class="icon-text">
                <h3>
                    <asp:Label ID="lblHighSkillDegree" runat="server" Text="Label"></asp:Label></h3>
                <p>Highest Skill Degree </p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>



    <div class="total-world">
        <div class="world-map">
            <div class="alert-close6"></div>
            <h3>World Map</h3>
            <p><span class="color1"></span>40%<span class="color2"></span>12%<span class="color3"></span>11%<span class="color4"></span>10%<span class="color5"></span>18%</p>
            <div class="clearfix"></div>
            <div id="vmap" style="width: 600px; height: 400px;"></div>
        </div>
        <div class="site-report">
            <div class="alert-close3"></div>
            <h3>System Reports</h3>
            <div class="skills-top">
                <h5>
                    <h5>Highest Skill Degree</h5>
                </h5>
                <h4><asp:Label ID="lblHighSkillDegree1" runat="server" Text="Label"></asp:Label></h4>
                <div class="clearfix"></div>
                <div class="skills">
                    <div class="skill" style="width: 96%"></div>
                </div>
            </div>
            <div class="skills-top">
                <h5>Education</h5>
                <h4>89%</h4>
                <div class="clearfix"></div>
                <div class="skills">
                    <div class="skill1" style="width: 89%"></div>
                </div>
            </div>
            <div class="skills-top">
                <h5>Experiences</h5>
                <h4>76%</h4>
                <div class="clearfix"></div>
                <div class="skills">
                    <div class="skill2" style="width: 76%"></div>
                </div>
            </div>
            <p>Personal CV</p>
        </div>
        <div class="clearfix"></div>
    </div>


</asp:Content>
