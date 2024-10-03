.class public final synthetic Lcom/android/launcher3/popup/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/shortcuts/DeepShortcutView;

.field public final synthetic h:Z

.field public final synthetic i:Landroid/content/Context;

.field public final synthetic j:I

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic m:Landroid/content/pm/ShortcutInfo;

.field public final synthetic n:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;ZLandroid/content/Context;ILjava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/x;->g:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iput-boolean p2, p0, Lcom/android/launcher3/popup/x;->h:Z

    iput-object p3, p0, Lcom/android/launcher3/popup/x;->i:Landroid/content/Context;

    iput p4, p0, Lcom/android/launcher3/popup/x;->j:I

    iput-object p5, p0, Lcom/android/launcher3/popup/x;->k:Ljava/util/List;

    iput-object p6, p0, Lcom/android/launcher3/popup/x;->l:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p7, p0, Lcom/android/launcher3/popup/x;->m:Landroid/content/pm/ShortcutInfo;

    iput-object p8, p0, Lcom/android/launcher3/popup/x;->n:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/popup/x;->g:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/x;->h:Z

    iget-object v2, p0, Lcom/android/launcher3/popup/x;->i:Landroid/content/Context;

    iget v3, p0, Lcom/android/launcher3/popup/x;->j:I

    iget-object v4, p0, Lcom/android/launcher3/popup/x;->k:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher3/popup/x;->l:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v6, p0, Lcom/android/launcher3/popup/x;->m:Landroid/content/pm/ShortcutInfo;

    iget-object v7, p0, Lcom/android/launcher3/popup/x;->n:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/popup/PopupPopulator;->b(Lcom/android/launcher3/shortcuts/DeepShortcutView;ZLandroid/content/Context;ILjava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method
