.class public final synthetic Ln/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/android/launcher3/icons/IconCache;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/y1;->g:Ljava/util/Map;

    iput-object p2, p0, Ln/y1;->h:Ljava/util/List;

    iput-object p3, p0, Ln/y1;->i:Lcom/android/launcher3/icons/IconCache;

    iput-object p4, p0, Ln/y1;->j:Ljava/util/List;

    iput-object p5, p0, Ln/y1;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ln/y1;->g:Ljava/util/Map;

    iget-object v1, p0, Ln/y1;->h:Ljava/util/List;

    iget-object v2, p0, Ln/y1;->i:Lcom/android/launcher3/icons/IconCache;

    iget-object v3, p0, Ln/y1;->j:Ljava/util/List;

    iget-object v4, p0, Ln/y1;->k:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->m(Ljava/util/Map;Ljava/util/List;Lcom/android/launcher3/icons/IconCache;Ljava/util/List;Ljava/util/Map;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
