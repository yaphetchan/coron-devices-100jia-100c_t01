.class Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$imageview:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;->this$1:Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

    iput-object p2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;->val$imageview:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;->val$imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    return-void
.end method
