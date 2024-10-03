.class public final synthetic Lcom/android/launcher3/uioverrides/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/uioverrides/y;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/uioverrides/y;->g:I

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->l(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    return-void
.end method
