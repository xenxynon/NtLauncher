.class public final Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask$Companion;


# instance fields
.field private final nothingIconApplyStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask;->Companion:Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/model/NothingIconApplyStatusUpdateTask;->nothingIconApplyStatus:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apps"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded(Z)V

    return-void
.end method
