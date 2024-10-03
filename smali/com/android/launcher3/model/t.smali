.class public final synthetic Lcom/android/launcher3/model/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/IntSet;

.field public final synthetic b:Lcom/android/launcher3/util/RunnableList;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/t;->a:Lcom/android/launcher3/util/IntSet;

    iput-object p2, p0, Lcom/android/launcher3/model/t;->b:Lcom/android/launcher3/util/RunnableList;

    iput p3, p0, Lcom/android/launcher3/model/t;->c:I

    iput-boolean p4, p0, Lcom/android/launcher3/model/t;->d:Z

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/t;->a:Lcom/android/launcher3/util/IntSet;

    iget-object v1, p0, Lcom/android/launcher3/model/t;->b:Lcom/android/launcher3/util/RunnableList;

    iget v2, p0, Lcom/android/launcher3/model/t;->c:I

    iget-boolean p0, p0, Lcom/android/launcher3/model/t;->d:Z

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->a(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
