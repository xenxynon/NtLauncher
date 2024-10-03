.class public Le2/g;
.super Le2/t;
.source "SourceFile"

# interfaces
.implements Lx1/j;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/g$a;
    }
.end annotation


# static fields
.field public static final t:Le2/g$a;


# instance fields
.field private final l:Lx1/i;

.field private final m:Lx1/m;

.field private final n:Z

.field private o:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Le2/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/g$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/g;->t:Le2/g$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;Lx1/m;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le2/t;-><init>(Lorg/json/JSONObject;)V

    iput-object p2, p0, Le2/g;->l:Lx1/i;

    iput-object p3, p0, Le2/g;->m:Lx1/m;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p3, "loadImageSync"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    iput-boolean p2, p0, Le2/g;->n:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/g;->p:Z

    new-instance p1, Le2/g$b;

    invoke-direct {p1, p0}, Le2/g$b;-><init>(Le2/g;)V

    iput-object p1, p0, Le2/g;->s:Le2/g$b;

    return-void
.end method

.method public static final synthetic C(Le2/g;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/g;->L(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Le2/g;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le2/g;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final F(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Le2/g;->l:Lx1/i;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lx1/i;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final G(Landroid/net/Uri;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.nothing.systemui.qs.widget"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic H(Le2/g;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "setImageURI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p3}, Le2/g;->F(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Le2/g;->L(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_1
    const-string v0, "setImageTintList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Le2/g;->K(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "setImageTintBlendMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Le2/g;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "setScaleType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Le2/g;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_4
    const-string v0, "setAnimatedVectorDrawable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p3}, Le2/g;->I(Landroid/view/View;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Le2/t;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_7

    return-object p0

    :cond_7
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1dab3d7a -> :sswitch_4
        -0x142d769e -> :sswitch_3
        0x21f96b40 -> :sswitch_2
        0x28582772 -> :sswitch_1
        0x4355fc93 -> :sswitch_0
    .end sparse-switch
.end method

.method private final I(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string v1, "playOnce"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Le2/g;->p:Z

    const/4 p2, 0x0

    const-string v1, "setAnimationCallback"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Le2/g;->q:Z

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "drawableRes"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v1, p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Le2/g;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const-string v2, "setTint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-boolean p1, p0, Le2/g;->q:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le2/g;->registerAnimListener()V

    iget-object p1, p0, Le2/g;->m:Lx1/m;

    const/16 p2, 0x4621

    invoke-interface {p1, p2, p0}, Lx1/m;->d(ILx1/j;)V

    :cond_1
    const-string p0, "state"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "stop"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set image view tint blend mode success, target = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", key = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedImageView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final K(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    sget-object p2, Ln5/l;->h:Ln5/l$a;

    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImageView setImageTintList error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedImageView"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final L(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p4, Le2/g$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le2/g$c;

    iget v1, v0, Le2/g$c;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/g$c;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/g$c;

    invoke-direct {v0, p0, p4}, Le2/g$c;-><init>(Le2/g;Lq5/d;)V

    :goto_0
    iget-object p4, v0, Le2/g$c;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le2/g$c;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, p4

    :goto_1
    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p3}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    invoke-static {p3}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object p4, p3

    :goto_3
    check-cast p4, Landroid/net/Uri;

    if-eqz p4, :cond_7

    instance-of p3, p1, Landroid/widget/ImageView;

    if-eqz p3, :cond_7

    iget-boolean p3, p0, Le2/g;->n:Z

    if-nez p3, :cond_6

    invoke-direct {p0, p4}, Le2/g;->G(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_5

    :cond_6
    :goto_4
    iput v3, v0, Le2/g$c;->i:I

    invoke-virtual {p0, p1, p2, p4, v0}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p4, Le2/g$d;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le2/g$d;

    iget v1, v0, Le2/g$d;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/g$d;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/g$d;

    invoke-direct {v0, p0, p4}, Le2/g$d;-><init>(Le2/g;Lq5/d;)V

    :goto_0
    iget-object p4, v0, Le2/g$d;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le2/g$d;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    sget-object v2, Lj2/g;->a:Lj2/g$a;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {v2, p3}, Lj2/g$a;->a(I)Landroid/widget/ImageView$ScaleType;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, p4

    :goto_1
    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p3}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    invoke-static {p3}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object p4, p3

    :goto_3
    check-cast p4, Landroid/widget/ImageView$ScaleType;

    if-eqz p4, :cond_5

    iput v3, v0, Le2/g$d;->i:I

    invoke-virtual {p0, p1, p2, p4, v0}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
.method public final E()Lx1/i;
    .locals 0

    iget-object p0, p0, Le2/g;->l:Lx1/i;

    return-object p0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Le2/g;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 1

    iget-boolean v0, p0, Le2/g;->p:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Le2/g;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3, p4}, Le2/g;->H(Le2/g;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public registerAnimListener()V
    .locals 1

    iget-boolean v0, p0, Le2/g;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le2/g;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/g;->r:Z

    iget-object v0, p0, Le2/g;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Le2/g;->s:Le2/g$b;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Le2/g;->p:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Le2/g;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public unregisterAnimListener()V
    .locals 1

    iget-boolean v0, p0, Le2/g;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le2/g;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/g;->r:Z

    iget-object v0, p0, Le2/g;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Le2/g;->s:Le2/g$b;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_0
    return-void
.end method
