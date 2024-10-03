.class public final synthetic Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/a;->g:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lp/a;->g:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->a(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void
.end method
