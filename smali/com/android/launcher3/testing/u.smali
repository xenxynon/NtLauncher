.class public final synthetic Lcom/android/launcher3/testing/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/u;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/testing/u;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->b(Ljava/lang/String;)V

    return-void
.end method
