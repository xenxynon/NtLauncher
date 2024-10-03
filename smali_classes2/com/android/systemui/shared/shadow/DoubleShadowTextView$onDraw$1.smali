.class final Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    iput-object p2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->$canvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->$canvas:Landroid/graphics/Canvas;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->access$onDraw$s-938935918(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V

    return-void
.end method
