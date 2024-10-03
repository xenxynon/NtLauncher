.class final Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lcom/android/launcher3/model/data/AppInfo;",
        ">;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$a;->g:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$a;->g:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {p0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->l(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p([Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
