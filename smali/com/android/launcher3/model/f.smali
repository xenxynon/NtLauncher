.class public final synthetic Lcom/android/launcher3/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/f;->a:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    iput p2, p0, Lcom/android/launcher3/model/f;->b:I

    iput-boolean p3, p0, Lcom/android/launcher3/model/f;->c:Z

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/f;->a:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    iget v1, p0, Lcom/android/launcher3/model/f;->b:I

    iget-boolean p0, p0, Lcom/android/launcher3/model/f;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->b(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
