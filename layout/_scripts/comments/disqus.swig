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

      </style>


      <script type="text/javascript">
        var disqus_loaded = false;

        var show_btn = '<div class="show-commit-cls"><a id="show_commit_btn" class="show-commit-btn" href="javascript:;" title="评论">评论/查看评论</a></div>';
        var comments = document.getElementById("comments");
        comments.insertAdjacentHTML("beforeBegin", show_btn);

        document.getElementById('show_commit_btn').onclick = function() {
          if (!disqus_loaded) {
            run_disqus_script('count.js');
            {% if page.comments %}
              run_disqus_script('embed.js');
            {% endif %}

            $('.show-commit-cls').hide();
          }
        }


        /*
        var disqus_herf = '<a href="#" onclick="disqus();return false;">评论/查看评论 (Show Comments)</a>';
        window.onscroll = function (e) {
            if ((window.innerHeight + window.scrollY)
                >= document.body.offsetHeight) {
                if (!disqus_loaded) disqus();
            }
        };
        */
      </script>
 
    {% endif %}

  {% endif %}

{% endif %}