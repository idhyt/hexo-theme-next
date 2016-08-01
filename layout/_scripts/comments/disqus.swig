{% if not (theme.duoshuo and theme.duoshuo.shortname) and not theme.duoshuo_shortname %}

  {% if theme.disqus_shortname %}
    <script type="text/javascript">
      var disqus_shortname = '{{theme.disqus_shortname}}';
      var disqus_identifier = '{{ page.path }}';
      var disqus_title = '{{ page.title }}';
      var disqus_url = '{{ page.permalink }}';

      function run_disqus_script(disqus_script){
        var dsq = document.createElement('script');
        dsq.type = 'text/javascript';
        dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/' + disqus_script;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
      }

      var disqus_forbid = true;
      function google_forbid() {
        disqus_forbid = true;
      }

      function google_allow() {
        disqus_forbid = false;
      }

    </script>

    {% if theme.disqus_load %}

      <script type="text/javascript">
          run_disqus_script('count.js');
          {% if page.comments %}
            run_disqus_script('embed.js');
          {% endif %}
      </script>

    {% else %}

      <style type="text/css">
        .show-commit-btn {
            text-align: center;
            margin-top: 5%;
            display: inline-block;
            color: #ddd;
            font: 14px/2 "Microsoft Yahei";
            background-color: #444;
            padding: 1px 5px;
            border-bottom: none;
            // background:url("data:image/svg+xml;base64,PD94bWwgdm3Mz4=") no-repeat 0 50%
            // background:url("http//xxxx.gif") no-repeat 0 
        }
        .show-commit-cls a:hover { 
            // background-position: 0px -82px;
            color: #87daff;
            background-color:#333;
        }

        .show-commit-dsp {
            text-align: center;
            font: 14px/2 "Microsoft Yahei";
            color: #ddd;
            margin-top: 5%;
        }
      </style>


      <script type="text/javascript">

        var disqus_loaded = false;

        var show_btn = 
          '<div class="show-commit-cls">  \
            <a id="show_commit_btn" class="show-commit-btn" href="javascript:;" title="评论">评论/查看评论</a>  \
            <div id="show_commit_dsp" class="show-commit-dsp"> Disqus评论可能被墙</div> \
          </div>';
        var comments = document.getElementById("comments");
        comments.insertAdjacentHTML("beforeBegin", show_btn);

        $('.show-commit-dsp').hide();

        document.getElementById('show_commit_btn').onclick = function() {
          if (!disqus_loaded) {
            disqus_loaded = true;
            $('.show-commit-btn').hide();

            run_disqus_script('count.js');
            {% if page.comments %}
              run_disqus_script('embed.js');
            {% endif %}

            if (disqus_forbid && $('.show-commit-dsp').css("display") == "none") {
              $('.show-commit-dsp').show(1500);
            }

          }

        }

      </script>

      <img src="https://lh4.googleusercontent.com/-lOxRXbE0_FM/V59i2VnJDxI/AAAAAAAAAAg/f2MXiY-UaAc7_f1rJXOtpQ1lbNjqRF0MQCL0B/w142-h135/disqus.jpg" style="display: none" onload="google_allow()" onerror="google_forbid()"/>

    {% endif %}

  {% endif %}

{% endif %}