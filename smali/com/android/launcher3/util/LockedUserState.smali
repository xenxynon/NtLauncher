.class public final Lcom/android/launcher3/util/LockedUserState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LockedUserState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/LockedUserState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isUserUnlocked:Z

.field private final isUserUnlockedAtLauncherStartup:Z

.field private final mContext:Landroid/content/Context;

.field private final mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

.field private final mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/LockedUserState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LockedUserState$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/util/LockedUserState;->Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/b0;->a:Lcom/android/launcher3/util/b0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/c0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/c0;-><init>(Lcom/android/launcher3/util/LockedUserState;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    iput-boolean v1, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/util/LockedUserState;->notifyUserUnlocked()V

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.USER_UNLOCKED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final INSTANCE$lambda$1(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/LockedUserState;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/LockedUserState;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState;->INSTANCE$lambda$1(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver$lambda$0(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V

    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/LockedUserState;->Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object p0

    return-object p0
.end method

.method private static final mUserUnlockedReceiver$lambda$0(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    invoke-direct {p0}, Lcom/android/launcher3/util/LockedUserState;->notifyUserUnlocked()V

    :cond_0
    return-void
.end method

.method private final notifyUserUnlocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method

.method public final isUserUnlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    return p0
.end method

.method public final isUserUnlockedAtLauncherStartup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup:Z

    return p0
.end method

.method public final runOnUserUnlocked(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method
