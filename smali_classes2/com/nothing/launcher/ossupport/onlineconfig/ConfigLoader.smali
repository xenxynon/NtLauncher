.class public final Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

.field private static final KEY_CURRENT_CONFIG_LOADER_JSON:Ljava/lang/String; = "key_current_config_loader_json"

.field private static final MODULE_NAME:Ljava/lang/String; = "launcher_config"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.nothing.launcher.ossupport.onlineconfig.ConfigLoader.prefs"

.field private static final TAG:Ljava/lang/String; = "ConfigLoader"

.field private static currentConfig:Lj4/g;

.field private static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static observer:Li5/b;

.field private static updateIconFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final updater:Li5/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-direct {v0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;-><init>()V

    sput-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    sget-object v0, Lj4/b;->a:Lj4/b;

    sput-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updater:Li5/b$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->init$lambda$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updater$lambda$2$lambda$1$lambda$0(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic c(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updater$lambda$2(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic d(Lj4/g;Lj4/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateBadForegroundMono$lambda$6(Lj4/g;Lj4/g;)V

    return-void
.end method

.method private final endConfigObserver()V
    .locals 0

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->observer:Li5/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li5/b;->b()V

    :cond_0
    return-void
.end method

.method private final findUniqueElements(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lo5/j0;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p0}, Lo5/j0;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p2, p0}, Lo5/j0;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lo5/j;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getLocaleConfigs(Landroid/content/Context;)Lj4/g;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lh4/a;->a:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->parseConfigFromReader(Ljava/io/Reader;)Lj4/g;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLocaleConfigs -> NotFoundException -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfigLoader"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final getStringSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getVersion(Lj4/g;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj4/g;->c()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private final grabConfigs(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->readLastConfig()Lj4/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getLocaleConfigs(Landroid/content/Context;)Lj4/g;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    new-instance v0, Li5/a;

    const-string v1, "launcher_config"

    invoke-direct {v0, p1, v1}, Li5/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Li5/a;->a()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateConfigs(Lorg/json/JSONArray;)V

    sget-object p1, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->saveCurrentConfig()V

    :cond_2
    return-void
.end method

.method private static final init$lambda$3(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->grabConfigs(Landroid/content/Context;)V

    return-void
.end method

.method private final parseConfigFromJsonString(Ljava/lang/String;)Lj4/g;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ll1/e;

    invoke-direct {v0}, Ll1/e;-><init>()V

    const-class v1, Lj4/a;

    invoke-virtual {v0, p1, v1}, Ll1/e;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj4/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj4/a;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo5/j;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj4/g;
    :try_end_0
    .catch Ll1/n; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseConfigFromJsonString -> JsonParseException -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfigLoader"

    invoke-static {v0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final parseConfigFromReader(Ljava/io/Reader;)Lj4/g;
    .locals 5

    const-string p0, "parseConfigFromReader -> IOException -> "

    const-string v0, "ConfigLoader"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ll1/e;

    invoke-direct {v2}, Ll1/e;-><init>()V

    const-class v3, Lj4/a;

    invoke-virtual {v2, p1, v3}, Ll1/e;->g(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj4/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lj4/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lo5/j;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj4/g;
    :try_end_0
    .catch Ll1/n; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseConfigFromReader -> JsonParseException -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    throw v1
.end method

.method private final putStringSP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private final readLastConfig()Lj4/g;
    .locals 2

    const-string v0, "key_current_config_loader_json"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getStringSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ll1/e;

    invoke-direct {v0}, Ll1/e;-><init>()V

    const-class v1, Lj4/g;

    invoke-virtual {v0, p0, v1}, Ll1/e;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj4/g;
    :try_end_0
    .catch Ll1/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readLastConfig -> JsonParseException -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConfigLoader"

    invoke-static {v0, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final saveCurrentConfig()V
    .locals 2

    new-instance v0, Ll1/e;

    invoke-direct {v0}, Ll1/e;-><init>()V

    sget-object v1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    invoke-virtual {v0, v1}, Ll1/e;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "key_current_config_loader_json"

    invoke-direct {p0, v1, v0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->putStringSP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final startConfigObserver()V
    .locals 0

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->observer:Li5/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li5/b;->a()V

    :cond_0
    return-void
.end method

.method private final updateBadForegroundMono(Lj4/g;Lj4/g;)V
    .locals 1

    sget-object p0, Lv2/b;->a:Lv2/b;

    new-instance v0, Lj4/d;

    invoke-direct {v0, p1, p2}, Lj4/d;-><init>(Lj4/g;Lj4/g;)V

    invoke-virtual {p0, v0}, Lv2/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateBadForegroundMono$lambda$6(Lj4/g;Lj4/g;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/g;->a()Lj4/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/f;->a()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj4/g;->a()Lj4/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj4/f;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    sget-object p1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-direct {p1, p0, v0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->findUniqueElements(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateIconFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method private final updateConfigs(Lorg/json/JSONArray;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONObject().apply {\n   \u2026ray)\n        }.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->parseConfigFromJsonString(Ljava/lang/String;)Lj4/g;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfigs -> newConfig version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getVersion(Lj4/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentConfig version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    invoke-direct {p0, v1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getVersion(Lj4/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigLoader"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getVersion(Lj4/g;)I

    move-result v0

    sget-object v1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    invoke-direct {p0, v1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getVersion(Lj4/g;)I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    invoke-direct {p0, p1, v0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateBadForegroundMono(Lj4/g;Lj4/g;)V

    sput-object p1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    invoke-direct {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->saveCurrentConfig()V

    :cond_0
    return-void
.end method

.method private static final updater$lambda$2(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Ly2/c;->a:Ly2/c;

    new-instance v1, Lj4/e;

    invoke-direct {v1, p0}, Lj4/e;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Ly2/c;->e(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final updater$lambda$2$lambda$1$lambda$0(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateConfigs(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->endConfigObserver()V

    return-void
.end method

.method public final getObserver()Li5/b;
    .locals 0

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->observer:Li5/b;

    return-object p0
.end method

.method public final getUpdateIconFunction()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateIconFunction:Ljava/util/function/Function;

    return-object p0
.end method

.method public final getWindowModeBlockList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/g;->d()Lj4/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/f;->a()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.nothing.launcher.ossupport.onlineconfig.ConfigLoader.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->observer:Li5/b;

    if-nez v0, :cond_1

    new-instance v0, Li5/b;

    sget-object v2, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updater:Li5/b$b;

    const-string v3, "launcher_config"

    invoke-direct {v0, p1, v1, v2, v3}, Li5/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Li5/b$b;Ljava/lang/String;)V

    sput-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->observer:Li5/b;

    :cond_1
    sget-object v0, Ly2/c;->a:Ly2/c;

    new-instance v1, Lj4/c;

    invoke-direct {v1, p1}, Lj4/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ly2/c;->e(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->startConfigObserver()V

    return-void
.end method

.method public final isBadForegroundMono(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/g;->a()Lj4/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/f;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lo5/j;->B(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isBlockFloatingIcon(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->currentConfig:Lj4/g;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/g;->b()Lj4/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj4/f;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lo5/j;->B(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final setObserver(Li5/b;)V
    .locals 0

    sput-object p1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->observer:Li5/b;

    return-void
.end method

.method public final setUpdateIconFunction(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->updateIconFunction:Ljava/util/function/Function;

    return-void
.end method
