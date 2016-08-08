<style type="text/css">

    .donate_bar {
        text-align: center;
        margin-top : 5%;
    }

    .donate_bar.hidden {
        display:none;
    }
/*
    .donate_bar a.btn_donate {
        display: inline-block;
        width: 82px;
        height: 82px;
        margin-left:auto;
        margin-right:auto;

        background: url("http://img.t.sinajs.cn/t5/style/images/apps_PRF/e_media/btn_reward.gif") no-repeat;
        _background: url("http://img.t.sinajs.cn/t5/style/images/apps_PRF/e_media/btn_reward.gif") no-repeat; 

        -webkit-transition: background 0s;
        -moz-transition: background 0s;
        -o-transition: background 0s;
        -ms-transition: background 0s;
        transition: background 0s;
    }
*/
    .donate_bar a.btn_donate:hover { 
        // background-position: 0px -82px;
        color: #87daff;
    }

    .donate_bar .donate_txt {
        display: block;
        color: #9d9d9d;
        font: 14px/2 "Microsoft Yahei";
    }

    .bold { 
        font-weight: bold; 
    }

    .post-donate a {
        border-bottom: 0px;
    }

    #donate_guide table {
        border: none;
    }

    #donate_guide td {
        border-bottom: none;
        border-right: none;
        // background: #333333;
        valign: top;
    }

</style>


{% if theme.donate.enable %}
    {% if is_home() %}
    {% else %}

    <div class ="post-donate">
        <div id="donate_board" class="donate_bar center">
              <a id="btn_donate" class="btn_donate" href="javascript:;" title="打赏">赏</a>
              <span id="donate_txt" class="donate_txt">
                   {% if theme.donate.text %}
                        {{ theme.donate.text }}
                   {% endif %}
              </span>
            <br>
        </div>  
  
        <div id="donate_guide" class="donate_bar center hidden">
            <!--
            {% if theme.donate.alipay %}
                <a href="{{ theme.donate.alipay }}" title="支付宝打赏" class="fancybox" rel="article0" 
                    style="float:left;margin-left:25%;margin-right:10px;">
                    <img src="{{ theme.donate.alipay }}" title="" height="164px" width="164px">
                </a> 
            {% endif %}  

            {% if theme.donate.wechat %}
                <a href="{{ theme.donate.wechat }}" title="微信打赏" class="fancybox" rel="article0"
                    style="margin-right:30%">
                    <img src="{{ theme.donate.wechat }}" title="" height="164px" width="164px">
                </a>
            {% endif %}
            -->
            <table>
                <tr>
                    <td>
                        {% if theme.donate.alipay %}
                            <a href="{{ theme.donate.alipay }}" title="支付宝打赏" class="fancybox" rel="article0" 
                                style="float:left;margin-left:25%;margin-right:10px;">
                                <img src="{{ theme.donate.alipay }}" title="" height="164px" width="164px">
                            </a> 
                        {% endif %} 
                    </td>
                    <td>
                        {% if theme.donate.wechat %}
                            <a href="{{ theme.donate.wechat }}" title="微信打赏" class="fancybox" rel="article0"
                                style="margin-right:30%">
                                <img src="{{ theme.donate.wechat }}" title="" height="164px" width="164px">
                            </a>
                        {% endif %}
                    </td>
                </tr>
            </table>

        </div>

        <script type="text/javascript">
            document.getElementById('btn_donate').onclick = function() {
                $('#donate_board').addClass('hidden');
                // $('#donate_guide').removeClass('hidden');
                $('#donate_guide').show(2000);
            }

        </script>
    </div>

    {% endif%}

{% endif %}