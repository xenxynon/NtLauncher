.class public final Le2/k;
.super Le2/g;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/k$a;
    }
.end annotation


# static fields
.field public static final x:Le2/k$a;


# instance fields
.field private final synthetic u:Li6/m0;

.field private final v:Ljava/lang/Integer;

.field private final w:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/k$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/k;->x:Le2/k$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;Lx1/m;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCollector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Le2/g;-><init>(Lorg/json/JSONObject;Lx1/i;Lx1/m;)V

    invoke-static {}, Li6/n0;->b()Li6/m0;

    move-result-object p2

    iput-object p2, p0, Le2/k;->u:Li6/m0;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p3, "startStrategy"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Le2/k;->v:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "playOnce"

    invoke-static {p1, p3, p2}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    :cond_1
    iput-object p2, p0, Le2/k;->w:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic N(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 0

    invoke-static {p0, p1}, Le2/k;->T(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O(Le2/k;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Le2/g;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final P(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Le2/k;->v:Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    :goto_0
    new-instance v6, Le2/k$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le2/k$b;-><init>(Le2/k;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)V

    invoke-virtual {p0, v6, p4}, Le2/t;->e(Ly5/l;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final Q(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    new-instance v3, Le2/k$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le2/k$c;-><init>(Le2/k;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method static synthetic R(Le2/k;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string p3, "NULL"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Le2/k;->Q(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final S(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    const-string v0, "null cannot be cast to non-null type com.airbnb.lottie.LottieAnimationView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, "keyPath"

    const-string v1, ""

    invoke-static {p0, p2, v1}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    const/4 p2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, p2

    :goto_1
    const-string v3, "**"

    if-eqz v2, :cond_3

    :try_start_1
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, p0

    aput-object v3, v4, p2

    invoke-direct {v2, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    move-object p0, v2

    :goto_2
    sget-object p2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v1, Le2/j;

    invoke-direct {v1, p1}, Le2/j;-><init>(I)V

    invoke-virtual {v0, p0, p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPorterDuffColorFilter error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedLottieAnimationView"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static final T(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 1

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "resumeAnimation"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Le2/k;->R(Le2/k;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 3

    const-string v0, "cancelAnimation"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Le2/k;->R(Le2/k;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "setProgress"

    invoke-direct {p0, v1, v0}, Le2/k;->Q(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public end()V
    .locals 3

    iget-object v0, p0, Le2/k;->w:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const-string v1, "cancelAnimation"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Le2/k;->R(Le2/k;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "setProgress"

    invoke-direct {p0, v1, v0}, Le2/k;->Q(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Le2/k;->u:Li6/m0;

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

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

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "setPorterDuffColorFilter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Le2/k;->S(Landroid/view/View;Ljava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_1
    const-string v0, "cancelAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v0, "resumeAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v0, "playAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v0, "pauseAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Le2/k;->P(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Le2/g;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4d4e95d2 -> :sswitch_4
        0x33c00ab0 -> :sswitch_3
        0x49b955d7 -> :sswitch_2
        0x5236b62a -> :sswitch_1
        0x749354da -> :sswitch_0
    .end sparse-switch
.end method

.method public pause()V
    .locals 3

    const-string v0, "pauseAnimation"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Le2/k;->R(Le2/k;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public registerAnimListener()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Le2/k;->w:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le2/t;->j()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    const-string v1, "playAnimation"

    invoke-static {p0, v1, v2, v0, v2}, Le2/k;->R(Le2/k;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public unregisterAnimListener()V
    .locals 0

    return-void
.end method
