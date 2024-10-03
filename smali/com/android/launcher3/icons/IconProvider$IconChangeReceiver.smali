.class Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconChangeReceiver"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

.field private mIconState:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mIconState:Ljava/lang/String;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/launcher3/icons/IconProvider;->access$000(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/icons/IconProvider;->access$100(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/icons/IconProvider;->access$000(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p2, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.nothing.launcher.APPLY_PICKED_ICON_PACK"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "com.nothing.launcher.NOTHING_ICON_FORCE_RENDER_ENABLE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "com.nothing.launcher.APPLY_PICKED_ICON_PACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "com.nothing.launcher.NOTHING_ICON_FORCE_RENDER_ENABLE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "themed_icon_pack_in_use"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    invoke-interface {p1}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onThemedIconChanged()V

    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_1
    iget-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {p2}, Lcom/android/launcher3/icons/IconProvider;->access$100(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconProvider;->access$100(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_7
    :pswitch_2
    iget-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {p2}, Lcom/android/launcher3/icons/IconProvider;->access$000(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_9

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {v1}, Lcom/android/launcher3/icons/IconProvider;->access$000(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mIconState:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    :goto_2
    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mIconState:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onSystemIconStateChanged(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    invoke-virtual {p1}, Lo3/b;->w()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    iget-object p1, p1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1, p2}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_3

    :pswitch_4
    const-string p1, "nothing_icon_pack_force_render_enable"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onNothingIconForceRenderChanged(Z)V

    :cond_9
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d88bcc7 -> :sswitch_5
        -0x740c95e0 -> :sswitch_4
        0x1df32313 -> :sswitch_3
        0x1e1f7f95 -> :sswitch_2
        0x381c7e71 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
