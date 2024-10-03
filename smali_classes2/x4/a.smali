.class public final Lx4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/a$a;
    }
.end annotation


# static fields
.field public static final d:Lx4/a$a;

.field private static final e:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx4/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx4/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lx4/a;->d:Lx4/a$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lx4/a;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    iput p1, p0, Lx4/a;->b:I

    return-void
.end method

.method private final a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConsideredDoubleTap -> deltaTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DoubleTapLockHelper"

    invoke-static {v3, v2}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lx4/a;->e:I

    int-to-long v4, v2

    cmp-long v2, v0, v4

    const/4 v4, 0x0

    if-gtz v2, :cond_1

    const-wide/16 v5, 0x14

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p2, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConsideredDoubleTap -> deltaX "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deltaY "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDoubleTapSlopSquare "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx4/a;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/2addr v0, v0

    mul-int/2addr p2, p2

    add-int/2addr v0, p2

    iget p0, p0, Lx4/a;->b:I

    if-ge v0, p0, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    return v4
.end method

.method private final c(Landroid/view/MotionEvent;)Z
    .locals 4

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "pref_double_tap_off_screen"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    iget-object v2, p0, Lx4/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx4/a;->a:Landroid/content/Context;

    instance-of v1, v0, Lq2/m;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/SystemUiProxy;->notifyGoingToSleepByDoubleClick(II)V

    iget-object p0, p0, Lx4/a;->a:Landroid/content/Context;

    check-cast p0, Lq2/m;

    invoke-virtual {p0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->goToSleep()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method


# virtual methods
.method public final b(Landroid/view/MotionEvent;Ly5/a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ly5/a<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleTapEvent -> e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleTapLockHelper"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lx4/a;->c:Landroid/view/MotionEvent;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lx4/a;->c:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lx4/a;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iput-object v3, p0, Lx4/a;->c:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lx4/a;->c(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    iput-object v3, p0, Lx4/a;->c:Landroid/view/MotionEvent;

    :cond_4
    :goto_2
    return v1
.end method
