.class public final synthetic Ln/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field public final synthetic h:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/w2;->g:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p2, p0, Ln/w2;->h:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln/w2;->g:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Ln/w2;->h:Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->a([Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/lang/Iterable;)V

    return-void
.end method
