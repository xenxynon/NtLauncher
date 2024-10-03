.class public Lcom/android/launcher3/proxy/ProxyActivityStarter;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mParams:Lcom/android/launcher3/proxy/StartActivityParams;

.field private mPendingFinish:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mPendingFinish:Z

    new-instance v0, Lcom/android/launcher3/proxy/ProxyActivityStarter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter$1;-><init>(Lcom/android/launcher3/proxy/ProxyActivityStarter;)V

    iput-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/proxy/ProxyActivityStarter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mPendingFinish:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/proxy/ProxyActivityStarter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mPendingFinish:Z

    return p1
.end method

.method public static getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/proxy/ProxyActivityStarter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "start-activity-params"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const p1, 0x10208000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0}, Lb3/a;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    const-string v1, "ProxyActivityStarter"

    if-eqz v0, :cond_0

    const-string v0, "finishAndRemoveTask: action pending, need to unpin task first"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mPendingFinish:Z

    invoke-virtual {p0}, Landroid/app/Activity;->stopLockTask()V

    goto :goto_0

    :cond_0
    const-string v0, "finishAndRemoveTask: action executing"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v1, v0, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start-activity-params"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/proxy/StartActivityParams;

    iput-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    if-nez v1, :cond_0

    const-string p1, "ProxyActivityStarter"

    const-string v0, "Proxy activity started without params"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object p1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    iget v2, v1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    iget-object v1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_2
    iget-object v4, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    if-eqz v4, :cond_3

    iget v5, v1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    iget-object v6, v1, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iget v7, v1, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    iget v8, v1, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    iget v9, v1, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    iget-object v10, v1, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
