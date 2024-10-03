.class public final synthetic Ln/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Landroid/content/pm/ShortcutInfo;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic j:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/d3;->g:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Ln/d3;->h:Landroid/content/Context;

    iput-object p3, p0, Ln/d3;->i:Lcom/android/launcher3/LauncherAppState;

    iput-object p4, p0, Ln/d3;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ln/d3;->g:Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, Ln/d3;->h:Landroid/content/Context;

    iget-object v2, p0, Ln/d3;->i:Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Ln/d3;->j:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->p(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
