.class public final synthetic Ln/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BgDataModel;

.field public final synthetic h:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/n2;->g:Lcom/android/launcher3/model/BgDataModel;

    iput-object p2, p0, Ln/n2;->h:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln/n2;->g:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Ln/n2;->h:Lcom/android/launcher3/LauncherAppState;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->m(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/LauncherAppState;Landroid/os/UserHandle;)V

    return-void
.end method
