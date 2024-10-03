.class final Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic $fullDetails:Landroid/content/pm/ShortcutInfo;

.field final synthetic $operateCount:Lkotlin/jvm/internal/z;

.field final synthetic $updatedWorkspaceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/z;Lcom/android/launcher3/LauncherAppState;Landroid/content/pm/ShortcutInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/z;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$operateCount:Lkotlin/jvm/internal/z;

    iput-object p2, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$app:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$fullDetails:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$updatedWorkspaceItems:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->invoke(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2

    const-string v0, "workspaceItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$operateCount:Lkotlin/jvm/internal/z;

    iget v1, v0, Lkotlin/jvm/internal/z;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/z;->g:I

    iget-object v0, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$fullDetails:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;->$updatedWorkspaceItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
