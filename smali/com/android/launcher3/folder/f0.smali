.class public final synthetic Lcom/android/launcher3/folder/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/PreviewBackground;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/f0;->g:Lcom/android/launcher3/folder/PreviewBackground;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/f0;->g:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-static {p0}, Lcom/android/launcher3/folder/PreviewBackground;->c(Lcom/android/launcher3/folder/PreviewBackground;)V

    return-void
.end method
