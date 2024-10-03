.class public final synthetic Ln/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/LoaderCursor;

.field public final synthetic b:Lcom/android/launcher3/model/BgDataModel;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/a1;->a:Lcom/android/launcher3/model/LoaderCursor;

    iput-object p2, p0, Ln/a1;->b:Lcom/android/launcher3/model/BgDataModel;

    iput-object p3, p0, Ln/a1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ln/a1;->a:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v1, p0, Ln/a1;->b:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Ln/a1;->c:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/model/LoaderTask;->b(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    return-void
.end method
