package step16.ex03.server;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

@Component("sqlSessionFactory")
public class SqlSessionFactoryFactoryBean implements FactoryBean {

  @Override
  public Object getObject() throws Exception {
    return new SqlSessionFactoryBuilder().build(
        Resources.getResourceAsStream("step16/ex03/server/mybatis-config.xml"));
  }

}
