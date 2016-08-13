<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; &nbsp; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}
  </span>
  <span class="with-love">
    <i class="icon-next-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}
  </span>
</div>

<div class="powered-by">
  Powered by <a class="theme-link" href="http://hexo.io">Hexo</a>
</div>

<div class="theme-info">
  Theme by <a class="theme-link" href="http://blog.idhyt.com">idhyt</a>.<a class="theme-link" href="https://github.com/idhyt/hexo-theme-next/tree/magiclamp">{{ theme.scheme }}</a>
</div>

<!-- busuanzi -->
{% if (theme.busuanzi) %}
  <div class="busuanzi-info">
    {% include '../_scripts/analytics/busuanzi.swig' %}
  </div>
{% endif %}

{% block footer %}{% endblock %}
