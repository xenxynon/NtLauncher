.class public final synthetic Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:[Lcom/android/launcher3/model/data/AppInfo;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/e;->a:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Ln/e;->b:I

    iput-object p3, p0, Ln/e;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Ln/e;->a:[Lcom/android/launcher3/model/data/AppInfo;

    iget v1, p0, Ln/e;->b:I

    iget-object p0, p0, Ln/e;->c:Ljava/util/Map;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder;->c([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
