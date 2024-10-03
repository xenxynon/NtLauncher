.class public final Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;
.implements Lx1/j;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/c$a;,
        Lz1/c$b;
    }
.end annotation


# static fields
.field public static final o:Lz1/c$a;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Landroid/animation/AnimatorSet;

.field private final i:I

.field private final j:Ljava/lang/Integer;

.field private final k:Ljava/lang/Boolean;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lx1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1/c$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lz1/c;->o:Lz1/c$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/c;->g:Lorg/json/JSONObject;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p1, v1, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_0
    iput v0, p0, Lz1/c;->i:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "startStrategy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lz1/c;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "playOnce"

    invoke-static {p1, v2, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lz1/c;->k:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    const-string v0, "setControl"

    invoke-static {p1, v0}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lz1/c;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lz1/c;->m:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic b(Lz1/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz1/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lz1/c;)I
    .locals 0

    iget p0, p0, Lz1/c;->i:I

    return p0
.end method

.method public static final synthetic d(Lz1/c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lz1/c;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic e(Lz1/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz1/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method private final f(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lz1/c;->l(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lz1/c;->n(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lz1/c;->m(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lz1/c;->j(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lz1/c;->k(Landroid/view/View;)V

    return-void
.end method

.method private final g(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz1/c;->n:Lx1/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lz1/c;->i:I

    invoke-interface {v0, v2}, Lx1/m;->b(I)Lx1/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lz1/c;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lz1/c;

    :cond_1
    if-eqz v1, :cond_9

    iget-object p0, p0, Lz1/c;->j:Ljava/lang/Integer;

    const/4 v0, 0x2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_3

    iget-object p0, v1, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p0, "reverse"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, v1, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->reverse()V

    goto :goto_2

    :sswitch_1
    const-string p0, "start"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, v1, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :sswitch_2
    const-string p0, "pause"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, v1, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_2

    :sswitch_3
    const-string p0, "resume"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, v1, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    goto :goto_2

    :sswitch_4
    const-string p0, "cancel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, v1, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5185d186 -> :sswitch_4
        -0x37b237d3 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x418e52e2 -> :sswitch_0
    .end sparse-switch
.end method

.method private final j(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz1/c;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "builder_info"

    invoke-static {p1, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lz1/c$b;

    invoke-direct {v0, p0, p1}, Lz1/c$b;-><init>(Lz1/c;Lorg/json/JSONArray;)V

    invoke-virtual {v0}, Lz1/c$b;->a()V

    :cond_0
    return-void
.end method

.method private final k(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lz1/c;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "setInterpolator"

    invoke-static {p1, v0}, Lv1/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lv1/a;->e(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v0, Lj2/h;->a:Lj2/h$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lj2/h$a;->a(I)Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lz1/c;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v0, "setDuration"

    invoke-static {p1, v0}, Lv1/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lv1/a;->h(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x7d0

    :goto_2
    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final l(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lz1/c;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "animators"

    invoke-static {v0, v1}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Le6/e;->i(II)Le6/d;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lo5/a0;

    invoke-virtual {v2}, Lo5/a0;->nextInt()I

    move-result v2

    invoke-static {v0, v2}, Lv1/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lz1/b;

    invoke-direct {v3, v2}, Lz1/b;-><init>(Lorg/json/JSONObject;)V

    const/4 v2, 0x0

    invoke-virtual {v3, p1, v2}, Lz1/b;->c(Landroid/view/View;Lx1/m;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lz1/c;->m:Ljava/util/Map;

    invoke-virtual {v3}, Lz1/b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animators parsed, available object animators size ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz1/c;->m:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedAnimatorSet"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final m(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lz1/c;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v0, "playSequentially"

    invoke-static {p1, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Le6/e;->i(II)Le6/d;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lo5/a0;

    invoke-virtual {v2}, Lo5/a0;->nextInt()I

    move-result v2

    invoke-static {p1, v2}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lz1/c;->m:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo5/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private final n(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lz1/c;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v0, "playTogether"

    invoke-static {p1, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Le6/e;->i(II)Le6/d;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lo5/a0;

    invoke-virtual {v2}, Lo5/a0;->nextInt()I

    move-result v2

    invoke-static {p1, v2}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lz1/c;->m:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo5/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public end()V
    .locals 2

    iget-object v0, p0, Lz1/c;->k:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public h(Ly5/l;Lq5/d;)Ljava/lang/Object;
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

.method public final i()Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public o(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    iput-object p5, p0, Lz1/c;->n:Lx1/m;

    invoke-direct {p0, p1}, Lz1/c;->f(Landroid/view/View;)V

    new-instance p1, Lz1/c$c;

    const/4 p2, 0x0

    invoke-direct {p1, p5, p0, p2}, Lz1/c$c;-><init>(Lx1/m;Lz1/c;Lq5/d;)V

    invoke-virtual {p0, p1, p6}, Lz1/c;->h(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final p(Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lz1/c;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lz1/c$d;

    invoke-direct {v0, p0, v1}, Lz1/c$d;-><init>(Lz1/c;Lq5/d;)V

    invoke-virtual {p0, v0, p1}, Lz1/c;->h(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    new-instance v0, Lz1/c$e;

    invoke-direct {v0, p0, v1}, Lz1/c$e;-><init>(Lz1/c;Lq5/d;)V

    invoke-virtual {p0, v0, p1}, Lz1/c;->h(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    return-void
.end method

.method public registerAnimListener()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lz1/c;->k:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz1/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lz1/c;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz1/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterAnimListener()V
    .locals 0

    return-void
.end method
