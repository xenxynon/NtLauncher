.class public final synthetic Lcom/android/systemui/shared/rotation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/g;->g:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    iput p2, p0, Lcom/android/systemui/shared/rotation/g;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/g;->g:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    iget p0, p0, Lcom/android/systemui/shared/rotation/g;->h:I

    invoke-static {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->R(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V

    return-void
.end method
