.class public Lcom/android/launcher3/util/ScreenOnTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/ScreenOnTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsScreenOn:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/m0;->a:Lcom/android/launcher3/util/m0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/n0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/n0;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    const-string p0, "android.intent.action.SCREEN_ON"

    const-string v1, "android.intent.action.SCREEN_OFF"

    const-string v2, "android.intent.action.USER_PRESENT"

    filled-new-array {p0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/ScreenOnTracker;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->onReceive(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/android/launcher3/util/ScreenOnTracker;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/ScreenOnTracker;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ScreenOnTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/android/launcher3/util/ScreenOnTracker;Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->lambda$dispatchScreenOnChanged$0(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method

.method private dispatchScreenOnChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/launcher3/util/o0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/o0;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$dispatchScreenOnChanged$0(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    invoke-interface {p1, p0}, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;->onScreenOnChanged(Z)V

    return-void
.end method

.method private onReceive(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/android/launcher3/util/ScreenOnTracker;->dispatchScreenOnChanged()V

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object p1, Lcom/android/launcher3/util/p0;->g:Lcom/android/launcher3/util/p0;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isScreenOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    return p0
.end method

.method public removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
