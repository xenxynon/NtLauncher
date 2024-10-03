.class public final Ld2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;
.implements Lx1/l;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lx1/i;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/a;->g:Lorg/json/JSONObject;

    iput-object p2, p0, Ld2/a;->h:Lx1/i;

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ld2/a;->l:Ljava/util/List;

    return-void
.end method

.method public static final synthetic d(Ld2/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ld2/a;->l:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld2/a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld2/a;->h:Lx1/i;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lx1/i$a;->b(Lx1/i;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Ld2/a;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld2/a;->h:Lx1/i;

    const/4 v0, 0x2

    const-string v1, "onHostViewStopped"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Lx1/i$a;->a(Lx1/i;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Ld2/a;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld2/a;->h:Lx1/i;

    const/4 v0, 0x2

    const-string v1, "onHostViewResumed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Lx1/i$a;->a(Lx1/i;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ly5/l;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lx1/o$a;->a(Lx1/o;Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Ld2/a;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    const-string p3, "on_view_resumed"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Ld2/a;->i:Z

    iget-object p1, p0, Ld2/a;->g:Lorg/json/JSONObject;

    const-string v0, "on_view_stopped"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p4, :cond_1

    move p1, p4

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Ld2/a;->j:Z

    iget-object p1, p0, Ld2/a;->g:Lorg/json/JSONObject;

    const-string v0, "on_configuration_changed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p4, :cond_2

    move p3, p4

    :cond_2
    iput-boolean p3, p0, Ld2/a;->k:Z

    iget-object p1, p0, Ld2/a;->g:Lorg/json/JSONObject;

    const-string p3, "on_config_broadcast_event"

    invoke-static {p1, p3}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lv1/b;->f(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object p1

    :cond_4
    iput-object p1, p0, Ld2/a;->l:Ljava/util/List;

    iget-object p1, p0, Ld2/a;->g:Lorg/json/JSONObject;

    const/4 p3, -0x1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "update_period_minute"

    invoke-static {p1, v1, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object p1, p0, Ld2/a;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p4

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ld2/a;->i:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ld2/a;->j:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ld2/a;->k:Z

    if-nez p1, :cond_5

    if-le v4, p3, :cond_7

    :cond_5
    new-instance p1, Ld2/a$a;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ld2/a$a;-><init>(Lx1/m;Landroid/view/ViewGroup;Ld2/a;ILq5/d;)V

    invoke-virtual {p0, p1, p6}, Ld2/a;->e(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_7
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public onHostConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ld2/a;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "host_new_config"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Ld2/a;->h:Lx1/i;

    const-string p1, "onConfigChanged"

    invoke-interface {p0, p1, v0}, Lx1/i;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onHostViewPeriodTimeUp()V
    .locals 3

    iget-object p0, p0, Ld2/a;->h:Lx1/i;

    const-string v0, "onPeriodRefresh"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lx1/i$a;->a(Lx1/i;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method
