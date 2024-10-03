.class Lcom/android/launcher3/LauncherAppState$IconObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState$IconObserver;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    return-void
.end method


# virtual methods
.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->access$000(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onNothingIconForceRenderChanged(Z)V
    .locals 2

    const-string v0, "LauncherAppState"

    const-string v1, "onNothingIconForceRenderChanged"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$000(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateNothingForceRenderIcons(Z)V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lb3/i;->e(Landroid/content/ContentResolver;Landroid/content/Context;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSystemIconStateChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$100(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemIconStateChanged: iconState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppState"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$100(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->ICON_STATE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lb3/i;->e(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lb3/i;->g(Landroid/content/ContentResolver;Landroid/content/Context;)V

    return-void
.end method

.method public onThemedIconChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$200(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->access$100(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lo3/d;->setIconThemeSupported(Z)V

    return-void
.end method

.method verifyIconChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$200(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo3/d;->getSystemIconState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->access$100(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->ICON_STATE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->onSystemIconStateChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
