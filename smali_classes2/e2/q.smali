.class public final Le2/q;
.super Le2/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/t;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final C(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const-string p0, "Host"

    :try_start_0
    sget-object p2, Ln5/l;->h:Ln5/l$a;

    new-instance p2, Lc2/c;

    invoke-static {p3}, Lv1/a;->g(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p2, p3}, Lc2/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "target.context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lc2/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1}, Lf2/c;->b(Ljava/lang/Object;)Lf2/c$g;

    move-result-object p3

    const-string v0, "setRemoteServiceIntent"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p3, v0, v2}, Lf2/c$g;->a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-interface {p3, p1, v0}, Lf2/c$j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call invoke method = setRemoteServiceIntent, value = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invoke setRemoteServiceIntent error. msg = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "set_remote_view_service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Le2/q;->C(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Le2/t;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
