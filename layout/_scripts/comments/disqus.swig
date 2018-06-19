{% if page.comments %}
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

    {% if theme.disqus_info.auto_load %}

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
            background: #444;
            padding: 1px 5px;
            border-bottom: none;
            // background:url("data:image/svg+xml;base64,PD94bWwgdm3Mz4=") no-repeat 0 50%
            // background:url("http//xxxx.gif") no-repeat 0 
        }
        .show-commit-cls a:hover { 
            // background-position: 0px -82px;
            color: #87daff;
            background: none;
        }

        .show-commit-dsp {
            text-align: center;
            font: 14px/2 "Microsoft Yahei";
            color: #ddd;
            margin-top: 5%;
        }
      </style>


      <script type="text/javascript">

        // var disqus_loaded = false;

        var disqus_false_text = "Disqus评论可能被墙";

        {% if theme.disqus_info.disqus_false_text %}
              disqus_false_text = "{{ theme.disqus_info.disqus_false_text }}";
        {% endif %}
        
        var show_btn = 
          '<div class="show-commit-cls">  \
            <a id="show_commit_btn" class="show-commit-btn" href="javascript:;" title="评论">评论/查看评论</a>  \
            <div id="show_commit_dsp" class="show-commit-dsp"> ' + disqus_false_text + 
            '</div> </div>';
        var t_comments = document.getElementById("comments");
        t_comments.insertAdjacentHTML("beforeBegin", show_btn);

        $('.show-commit-dsp').hide();

        <!--
        // define duoshuoQuery
        var duoshuo_shortname = '{{theme.disqus_info.duoshuo_shortname}}';
        var duoshuoQuery = {short_name: duoshuo_shortname};
        -->

        document.getElementById('show_commit_btn').onclick = function() {
          // if (!disqus_loaded) 
          {
            // disqus_loaded = true;
            $('.show-commit-btn').hide();

            // if google forbid, not load disqus.
            if (!disqus_forbid) {
              run_disqus_script('count.js');
              {% if page.comments %}
                run_disqus_script('embed.js');
              {% endif %}
            }
            <!--
            // else load duoshuo.
            else if (disqus_forbid) {
              if ($('.show-commit-dsp').css("display") == "none") {
                $('.show-commit-dsp').show(1500);
              }
              
              // if google forbid then load duoshuo
              if (duoshuo_shortname) {
                (function() {
                  var ds = document.createElement('script');
                  ds.type = 'text/javascript';
                  ds.async = true;
                  ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                  ds.charset = 'UTF-8';
                  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
                })();
              }
              var duoshuo_comment = 
                '<div class="ds-thread" \
                    data-thread-key="{{ page.path }}" \
                    data-title="{{ page.title }}" data-url="{{ page.permalink }}">  \
                </div>';
              t_comments.insertAdjacentHTML("afterBegin", duoshuo_comment);
            }
            -->
          }
        }

      </script>
      <img src="http://disqus.com/api/users/avatars/disqus_api.jpg" style="display: none" onload="google_allow()" onerror="google_forbid()"/>

    {% endif %}

  {% endif %}

{% endif %}
