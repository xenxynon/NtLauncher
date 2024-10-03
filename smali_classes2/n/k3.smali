.class public final synthetic Ln/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/UserLockStateChangedTask;

.field public final synthetic h:Ljava/util/HashMap;

.field public final synthetic i:Ljava/util/HashSet;

.field public final synthetic j:Landroid/content/Context;

.field public final synthetic k:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic l:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/UserLockStateChangedTask;Ljava/util/HashMap;Ljava/util/HashSet;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/k3;->g:Lcom/android/launcher3/model/UserLockStateChangedTask;

    iput-object p2, p0, Ln/k3;->h:Ljava/util/HashMap;

    iput-object p3, p0, Ln/k3;->i:Ljava/util/HashSet;

    iput-object p4, p0, Ln/k3;->j:Landroid/content/Context;

    iput-object p5, p0, Ln/k3;->k:Lcom/android/launcher3/LauncherAppState;

    iput-object p6, p0, Ln/k3;->l:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Ln/k3;->g:Lcom/android/launcher3/model/UserLockStateChangedTask;

    iget-object v1, p0, Ln/k3;->h:Ljava/util/HashMap;

    iget-object v2, p0, Ln/k3;->i:Ljava/util/HashSet;

    iget-object v3, p0, Ln/k3;->j:Landroid/content/Context;

    iget-object v4, p0, Ln/k3;->k:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Ln/k3;->l:Ljava/util/ArrayList;

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/model/UserLockStateChangedTask;->m(Lcom/android/launcher3/model/UserLockStateChangedTask;Ljava/util/HashMap;Ljava/util/HashSet;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
