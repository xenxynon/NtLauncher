.class public final synthetic Lcom/android/launcher3/testing/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/y;->a:Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/testing/y;->a:Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->o(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method
