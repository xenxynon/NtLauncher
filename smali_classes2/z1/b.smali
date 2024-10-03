.class public final Lz1/b;
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
        Lz1/b$a;
    }
.end annotation


# static fields
.field public static final n:Lz1/b$a;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/Integer;

.field private final k:Ljava/lang/Boolean;

.field private volatile l:Landroid/animation/ObjectAnimator;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lz1/b;->n:Lz1/b$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/b;->g:Lorg/json/JSONObject;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v2, Li2/b;->a:Li2/b$a;

    invoke-virtual {v2}, Li2/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lz1/b;->h:I

    if-eqz p1, :cond_1

    const-string v0, "id"

    invoke-static {p1, v0, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_1
    iput v0, p0, Lz1/b;->i:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "startStrategy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lz1/b;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "playOnce"

    invoke-static {p1, v1, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_3
    iput-object v0, p0, Lz1/b;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic b(Lz1/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz1/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method private final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz1/b;->m:Ljava/lang/String;

    return-void
.end method

.method private final h(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lv1/a;->d(Ljava/lang/Object;)F

    move-result p1

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    :cond_0
    return-void
.end method

.method private final i(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lv1/a;->h(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :goto_0
    return-void
.end method

.method private final j(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lv1/a;->h(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private final k(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lj2/h;->a:Lj2/h$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lj2/h$a;->a(I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    return-void
.end method

.method private final l(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lv1/a;->e(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    :goto_0
    return-void
.end method

.method private final m(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lv1/a;->e(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    :goto_0
    return-void
.end method

.method private final n(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lv1/a;->h(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;Lx1/m;)Landroid/animation/ObjectAnimator;
    .locals 5

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lz1/b;->h:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object v0, p0, Lz1/b;->g:Lorg/json/JSONObject;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    const-string v1, "method"

    invoke-static {v0, v1}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz1/b;->g:Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-static {v1, v2}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lz1/b;->g:Lorg/json/JSONObject;

    const-string v3, "propertyName"

    invoke-static {v2, v3}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p1, "ofControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p2, :cond_0

    iget p1, p0, Lz1/b;->i:I

    invoke-interface {p2, p1}, Lx1/m;->b(I)Lx1/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    instance-of p2, p1, Lz1/b;

    if-eqz p2, :cond_1

    check-cast p1, Lz1/b;

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_2

    iget-object v4, p1, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    goto :goto_2

    :sswitch_1
    const-string p2, "ofInt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v1}, Lv1/b;->e(Lorg/json/JSONArray;)[I

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_2

    :sswitch_2
    const-string p2, "ofArgb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v1}, Lv1/b;->e(Lorg/json/JSONArray;)[I

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_2

    :sswitch_3
    const-string p2, "ofFloat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v1}, Lv1/b;->d(Lorg/json/JSONArray;)[F

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :cond_2
    :goto_2
    iput-object v4, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lz1/b;->g:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "infoJson.keys()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lz1/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "value"

    sparse-switch v1, :sswitch_data_1

    goto :goto_3

    :sswitch_4
    const-string v1, "setRepeatMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->m(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_5
    const-string v1, "setCurrentFraction"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->h(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_6
    const-string v1, "setInterpolator"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->k(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_7
    const-string v1, "setCurrentPlayTime"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->i(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_8
    const-string v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :sswitch_9
    const-string v1, "setDuration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->j(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_a
    const-string v1, "setRepeatCount"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->l(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_b
    const-string v0, "resume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_3

    :sswitch_c
    const-string v1, "setStartDelay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_3

    :cond_a
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lz1/b;->n(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_d
    const-string v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_3

    :cond_b
    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lz1/b;->g(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    :goto_4
    new-instance p0, Lcom/nothing/cardparser/exception/OutOfTypeParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not parse the animator method type. Method = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, v4, p2, v4}, Lcom/nothing/cardparser/exception/OutOfTypeParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V

    throw p0

    :cond_d
    const-string p1, "SimulatedAnimator"

    const-string p2, "Can not found animator args info."

    invoke-static {p1, p2}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5e10cd3b -> :sswitch_3
        -0x3cd970bd -> :sswitch_2
        0x64bae98 -> :sswitch_1
        0x4953ff86 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5185d186 -> :sswitch_d
        -0x42e287bd -> :sswitch_c
        -0x37b237d3 -> :sswitch_b
        -0x3218c98e -> :sswitch_a
        -0x2913ea -> :sswitch_9
        0x65825f6 -> :sswitch_8
        0x11859bf8 -> :sswitch_7
        0x142dd649 -> :sswitch_6
        0x3ef7c5d9 -> :sswitch_5
        0x617f9be0 -> :sswitch_4
    .end sparse-switch
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Ly5/l;Lq5/d;)Ljava/lang/Object;
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

.method public final e()I
    .locals 0

    iget p0, p0, Lz1/b;->i:I

    return p0
.end method

.method public end()V
    .locals 2

    iget-object v0, p0, Lz1/b;->k:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public final f()Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

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

    invoke-virtual {p0, p1, p5}, Lz1/b;->c(Landroid/view/View;Lx1/m;)Landroid/animation/ObjectAnimator;

    new-instance p1, Lz1/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p5, p0, p2}, Lz1/b$b;-><init>(Lx1/m;Lz1/b;Lq5/d;)V

    invoke-virtual {p0, p1, p6}, Lz1/b;->d(Ly5/l;Lq5/d;)Ljava/lang/Object;

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
    .locals 3
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

    iget-object v0, p0, Lz1/b;->j:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_2
    :goto_1
    new-instance v0, Lz1/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz1/b$c;-><init>(Lz1/b;Lq5/d;)V

    invoke-virtual {p0, v0, p1}, Lz1/b;->d(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public registerAnimListener()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lz1/b;->k:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lz1/b;->l:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method public unregisterAnimListener()V
    .locals 0

    return-void
.end method
