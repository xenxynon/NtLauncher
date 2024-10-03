.class public final synthetic Lcom/android/launcher3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic h:Lcom/android/launcher3/icons/FastBitmapDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/m;->g:Lcom/android/launcher3/BubbleTextView;

    iput-object p2, p0, Lcom/android/launcher3/m;->h:Lcom/android/launcher3/icons/FastBitmapDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/m;->g:Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/m;->h:Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-static {v0, p0}, Lcom/android/launcher3/BubbleTextView;->b(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    return-void
.end method
