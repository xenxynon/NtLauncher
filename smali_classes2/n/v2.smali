.class public final synthetic Ln/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field public final synthetic h:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/v2;->g:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p2, p0, Ln/v2;->h:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln/v2;->g:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Ln/v2;->h:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->g([Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method
