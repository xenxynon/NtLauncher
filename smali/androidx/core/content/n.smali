.class public final synthetic Landroidx/core/content/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/n;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/content/n;->a:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->m(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
