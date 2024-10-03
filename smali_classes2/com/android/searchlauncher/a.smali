.class public Lcom/android/searchlauncher/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b$a;
.implements Lj1/b;
.implements Ll0/b;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/searchlauncher/a$a;
    }
.end annotation


# instance fields
.field private final g:Lcom/android/launcher3/Launcher;

.field private final h:Lj1/a;

.field private final i:Lcom/android/searchlauncher/a$a;

.field private j:Ll0/b$b;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/searchlauncher/a;->k:Z

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object p1, p0, Lcom/android/searchlauncher/a;->g:Lcom/android/launcher3/Launcher;

    new-instance v1, Lj1/a;

    invoke-direct {p0, v0}, Lcom/android/searchlauncher/a;->m(Landroid/content/SharedPreferences;)Lj1/a$a;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lj1/a;-><init>(Landroid/app/Activity;Lj1/b;Lj1/a$a;)V

    iput-object v1, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    new-instance p1, Lcom/android/searchlauncher/a$a;

    invoke-direct {p1, p0}, Lcom/android/searchlauncher/a$a;-><init>(Lcom/android/searchlauncher/a;)V

    iput-object p1, p0, Lcom/android/searchlauncher/a;->i:Lcom/android/searchlauncher/a$a;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private m(Landroid/content/SharedPreferences;)Lj1/a$a;
    .locals 2

    new-instance p0, Lj1/a$a;

    const-string v0, "pref_enable_minus_one"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1, v1, v1}, Lj1/a$a;-><init>(ZZZ)V

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0, p1, p2}, Lj1/a;->d(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public e(ZZ)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/searchlauncher/a;->k:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/android/searchlauncher/a;->k:Z

    iget-object p2, p0, Lcom/android/searchlauncher/a;->g:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Ll0/b$a;)V

    :cond_1
    return-void
.end method

.method public f(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->I(F)V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->G()V

    return-void
.end method

.method public h(Ll0/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/searchlauncher/a;->j:Ll0/b$b;

    return-void
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->C()V

    return-void
.end method

.method public j(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->k(Z)V

    return-void
.end method

.method public k()V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->f()V

    return-void
.end method

.method public l(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0, p1}, Lj1/a;->j(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p1}, Lj1/a;->t()V

    iget-object p1, p0, Lcom/android/searchlauncher/a;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/android/searchlauncher/a;->i:Lcom/android/searchlauncher/a$a;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->v()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->w()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->x()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->y()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->s()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->u()V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/a;->j:Ll0/b$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ll0/b$b;->onOverlayScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/searchlauncher/a;->h:Lj1/a;

    invoke-direct {p0, p1}, Lcom/android/searchlauncher/a;->m(Landroid/content/SharedPreferences;)Lj1/a$a;

    move-result-object p0

    invoke-virtual {p2, p0}, Lj1/a;->F(Lj1/a$a;)V

    :cond_0
    return-void
.end method
