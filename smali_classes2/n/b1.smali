.class public final synthetic Ln/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/LoaderCursor;

.field public final synthetic h:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/b1;->g:Lcom/android/launcher3/model/LoaderCursor;

    iput-object p2, p0, Ln/b1;->h:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln/b1;->g:Lcom/android/launcher3/model/LoaderCursor;

    iget-object p0, p0, Ln/b1;->h:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/LoaderTask;->d(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
